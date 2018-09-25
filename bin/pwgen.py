import secrets

alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789%&_?#=-'
password = ''.join(secrets.choice(alphabet) for i in range(20))
print(password)
