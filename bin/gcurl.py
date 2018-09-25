import os
import sys
from urlparse import urlparse, parse_qs

from BaseHTTPServer import HTTPServer, BaseHTTPRequestHandler

LOGIN_PAGE = """
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>pylon auth</title>
</head>
<body>

  <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
  <script>
    function init () {
      console.log("1")
      const params = {
        client_id: '336958192614-bsnugc0ra6vph1g2sm4k3c63tddec4ju.apps.googleusercontent.com',
        scope: 'profile email',
        ux_mode: 'redirect',
        redirect_uri: 'http://localhost:3000/verify'
      }
      gapi.load('client:auth2', () => {
        gapi.auth2.init(params).then(google => {
          console.log("2")
          if (google.isSignedIn.get()) {
            const user = google.currentUser.get()
            const response = user.getAuthResponse()
            console.log("3")
            fetch('http://localhost:3000/return?token=' + encodeURIComponent(response.id_token))
            .then(function() { window.close(); })
          } else {
            console.log("4")
            google.signIn()
          }
        })
       })
    }
  </script>
</body>
</html>
"""

token = None


class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        sys.stderr.write("{0}\n".format(self.path))
        sys.stderr.flush()
        if self.path == '/':
            self.send_response(200)
            self.send_header('Content-type','text/html')
            self.end_headers()
            self.wfile.write(LOGIN_PAGE)
            self.wfile.close()
        elif self.path[:7] != '/return':
            self.send_response(404)
            self.wfile.close()
        else:
            global token
            token = parse_qs(urlparse(self.path).query)['token'][0]
            self.send_response(200)
            self.wfile.write("goodbye")
            self.wfile.close()
            self.server.socket.close()

    def log_message(self, format, *args):
        return

if __name__ == '__main__':
    server = HTTPServer(('', 3000), Handler)

    os.system('chrome http://localhost:3000')

    try:
        server.serve_forever()
    except:
        pass

    print('curl -H "Authorization: Google {0}" {1}'
          .format(token, ' '.join(sys.argv[1:])))
