;;;; package.lisp

(defpackage #:cl-wolf
  (:use #:cl #:usocket #:fact-base)
  (:import-from #:split-sequence :split-sequence)
  (:import-from #:alexandria :with-gensyms)
  (:export #:module #:container #:reactor
	   #:load-by-name #:load-by-hash #:dependencies-of
	   #:in! #:out! #:-> #:tag #:message #:self))

(in-package #:cl-wolf)
(defparameter *module-base* 
  (merge-pathnames ".cl-wolf.base" (user-homedir-pathname)))

