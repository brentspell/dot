{:user
 {:source-paths
  ["dev"]

  :dependencies
  [[pjstadig/humane-test-output "0.7.0"]
   [org.clojure/tools.trace "0.7.9"]
   [org.clojure/tools.namespace "0.2.11"]]

  :injections
  [(require 'pjstadig.humane-test-output)
   (pjstadig.humane-test-output/activate!)]

  :plugins
  [[cider/cider-nrepl "0.12.0"]
   [lein-hiera "0.9.5"]
   [lein-javadoc "0.3.0"]
   [lein-ancient "0.6.10"]
   [lein-cloverage "1.0.6"]
   [lein-codox "0.9.7"]
   [lein-marginalia "0.9.0"]
   [jonase/eastwood "0.2.3"]
   [lein-checkall "0.1.1"]
   [lein-watch "0.0.3"]
   [com.jakemccrary/lein-test-refresh "0.15.0"]
   [com.palletops/uberimage "0.4.1"]
   [lein-project-version "0.1.0"]]

  :jvm-opts
  ["-Xverify:none"]

 :test-refresh
 {:quiet true}}}
