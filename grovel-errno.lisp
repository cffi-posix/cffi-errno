
(in-package :cffi-errno)

(include "errno.h")

(cvar ("errno" errno) :int)
