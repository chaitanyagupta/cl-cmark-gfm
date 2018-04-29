;;;; package.lisp

(defpackage #:cmark-gfm
  (:use #:cl #:cffi)
  (:nicknames #:cl-cmark-gfm)
  (:export #:markdown-to-html))
