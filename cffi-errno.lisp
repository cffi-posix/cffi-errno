
(in-package :cffi-errno)

(defcfun ("strerror" c-strerror) :string
  (errnum :int))

(defun strerror (errnum)
  (c-strerror errnum))

(defun error-errno (msg)
  (error "~A: ~D ~A" msg errno (strerror errno)))
