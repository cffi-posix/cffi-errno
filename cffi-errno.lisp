;;
;;  cffi-errno  -  Common Lisp wrapper for Unix error codes
;;
;;  Copyright 2017 Thomas de Grivel <thoxdg@gmail.com>
;;
;;  Permission to use, copy, modify, and distribute this software for any
;;  purpose with or without fee is hereby granted, provided that the above
;;  copyright notice and this permission notice appear in all copies.
;;
;;  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
;;  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
;;  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
;;  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
;;  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
;;  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
;;  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
;;

(in-package :cffi-errno)

(defcfun ("strerror" c-strerror) :string
  (errnum :int))

(defun strerror (errnum)
  (c-strerror errnum))

(define-condition errno-error (error)
  ((message :initarg :message
            :reader errno-error-message)
   (errno :initarg :errno
          :reader errno-error-errno)
   (strerror :initarg :strerror
             :reader errno-error-strerror))
  (:report (lambda (condition stream)
             (format stream "~A: ~D ~A"
                     (errno-error-message condition)
                     (errno-error-errno condition)
                     (errno-error-strerror condition)))))

(defun error-errno (message)
  (error 'errno-error
         :message message
         :errno errno
         :strerror (strerror errno)))
