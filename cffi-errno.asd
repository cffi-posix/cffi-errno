
(in-package :common-lisp-user)

(defpackage :cffi-errno.system
  (:use :common-lisp :asdf))

(in-package :cffi-errno.system)

(defsystem :cffi-errno
  :name "cffi-errno"
  :author "Thomas de Grivel <thoxdg@gmail.com>"
  :version "0.1"
  :description "Common Lisp wrapper for Unix error codes"
  :defsystem-depends-on ("cffi-grovel")
  :depends-on ("cffi")
  :components
  ((:file "package")
   (:cffi-grovel-file "grovel-errno" :depends-on ("package"))
   (:file "cffi-errno" :depends-on ("grovel-errno"))))
