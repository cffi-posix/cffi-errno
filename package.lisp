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

(in-package :common-lisp)

(defpackage :cffi-errno
  (:nicknames :errno)
  (:use :common-lisp :cffi)
  (:export
   #:errno
   #:errno-error
   #:errno-error-errno
   #:errno-error-message
   #:errno-error-strerror
   #:error-errno
   #:strerror
   #:+eperm+
   #:+enoent+
   #:+esrch+
   #:+eintr+
   #:+eio+
   #:+enxio+
   #:+e2big+
   #:+enoexec+
   #:+ebadf+
   #:+echild+
   #:+eagain+
   #:+enomem+
   #:+eacces+
   #:+efault+
   #:+enotblk+
   #:+ebusy+
   #:+eexist+
   #:+exdev+
   #:+enodev+
   #:+enotdir+
   #:+eisdir+
   #:+einval+
   #:+enfile+
   #:+emfile+
   #:+enotty+
   #:+etxtbsy+
   #:+efbig+
   #:+enospc+
   #:+espipe+
   #:+erofs+
   #:+emlink+
   #:+epipe+
   #:+edom+
   #:+erange+
   #:+edeadlk+
   #:+enametoolong+
   #:+enolck+
   #:+enosys+
   #:+enotempty+
   #:+eloop+
   #:+ewouldblock+
   #:+enomsg+
   #:+eidrm+
   #:+echrng+
   #:+el2nsync+
   #:+el3hlt+
   #:+el3rst+
   #:+elnrng+
   #:+eunatch+
   #:+enocsi+
   #:+el2hlt+
   #:+ebade+
   #:+ebadr+
   #:+exfull+
   #:+enoano+
   #:+ebadrqc+
   #:+ebadslt+
   #:+edeadlock+
   #:+ebfont+
   #:+enostr+
   #:+enodata+
   #:+etime+
   #:+enosr+
   #:+enonet+
   #:+enopkg+
   #:+eremote+
   #:+enolink+
   #:+eadv+
   #:+esrmnt+
   #:+ecomm+
   #:+eproto+
   #:+emultihop+
   #:+edotdot+
   #:+ebadmsg+
   #:+eoverflow+
   #:+enotuniq+
   #:+ebadfd+
   #:+eremchg+
   #:+elibacc+
   #:+elibbad+
   #:+elibscn+
   #:+elibmax+
   #:+elibexec+
   #:+eilseq+
   #:+erestart+
   #:+estrpipe+
   #:+eusers+
   #:+enotsock+
   #:+edestaddrreq+
   #:+emsgsize+
   #:+eprototype+
   #:+enoprotoopt+
   #:+eprotonosupport+
   #:+esocknosupport+
   #:+eopnotsupp+
   #:+epfnosupport+
   #:+eafnosupport+
   #:+eaddrinuse+
   #:+eaddrnotavail+
   #:+enetdown+
   #:+enetunreach+
   #:+enetreset+
   #:+econnaborted+
   #:+econnreset+
   #:+enobufs+
   #:+eisconn+
   #:+enotconn+
   #:+eshutdown+
   #:+etoomanyrefs+
   #:+etimedout+
   #:+econnrefused+
   #:+ehostdown+
   #:+ehostunreach+
   #:+ealready+
   #:+einprogress+
   #:+estale+
   #:+euclean+
   #:+enotnam+
   #:+enavail+
   #:+eisnam+
   #:+eremoteio+
   #:+edquot+
   #:+enomedium+
   #:+emediumtype+
   #:+ecanceled+
   #:+enokey+
   #:+ekeyexpired+
   #:+ekeyrevoked+
   #:+ekeyrejected+
   #:+eownerdead+
   #:+enotrecoverable+
   #:+erfkill+
   #:+ehwpoison+
   #:+enotsupp+))
