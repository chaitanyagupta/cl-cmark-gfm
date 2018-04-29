;;;; cl-cmark-gfm.lisp

(in-package #:cmark-gfm)

(define-foreign-library libcmark-gfm
  (t (:default "libcmark-gfm")))

(use-foreign-library libcmark-gfm)

(defcfun "cmark_markdown_to_html" :pointer
  (text :string)
  (len size)
  (options options))

(defcfun "strlen" size
  (s :pointer))

(defun markdown-to-html (text &rest options)
  (with-foreign-string (ftext text :encoding :utf-8)
    (let* ((options (or options :default))
           (length (strlen ftext))
           (fhtml (cmark-markdown-to-html ftext length options)))
      (prog1 (foreign-string-to-lisp fhtml :encoding :utf-8)
        (foreign-free fhtml)))))
