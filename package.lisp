
(in-package :common-lisp)

(defpackage :cffi-errno
  (:use :common-lisp :cffi)
  (:export
   #:errno
   #:error-errno
   #:strerror))
