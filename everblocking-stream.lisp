;;;; everblocking-stream.lisp

(defpackage #:everblocking-stream
  (:use #:cl #:trivial-gray-streams)
  (:export #:everblocking-stream))

(in-package #:everblocking-stream)

(defclass everblocking-stream (fundamental-input-stream) ())

(defmethod stream-read-char ((stream everblocking-stream)) (loop (sleep 1)))

(defmethod stream-read-line ((stream everblocking-stream)) (loop (sleep 1)))

(defmethod stream-peek-char ((stream everblocking-stream)) (loop (sleep 1)))

(defmethod stream-read-char-no-hang ((stream everblocking-stream)))

(defmethod stream-listen ((stream everblocking-stream)))

(defmethod stream-clear-input ((stream everblocking-stream)))

(defmethod stream-unread-char ((stream everblocking-stream) character)
  (error "Cannot unread char to an everblocking stream."))
