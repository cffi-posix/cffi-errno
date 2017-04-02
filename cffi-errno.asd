
(in-package :common-lisp-user)

(defpackage :cffi-errno.system
  (:use :common-lisp :asdf))

(in-package :cffi-errno.system)

(defsystem "cffi-errno"
  :defsystem-depends-on ("cffi-grovel")
  :depends-on ("cffi")
  :components
  ((:file "package")
   (:cffi-grovel-file "grovel-errno" :depends-on ("package"))
   (:file "cffi-errno" :depends-on ("grovel-errno"))))
