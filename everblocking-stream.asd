;;;; everblocking-stream.asd

(asdf:defsystem #:everblocking-stream
  :description "A stream that always blocks and never has data available."
  :author "Michał \"phoe\" Herda <phoe@disroot.org>"
  :license  "Public domain"
  :version "1.0"
  :serial t
  :depends-on (#:trivial-gray-streams)
  :components ((:file "everblocking-stream")))
