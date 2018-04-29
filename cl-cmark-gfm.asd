;;;; cl-cmark-gfm.asd

(asdf:defsystem #:cl-cmark-gfm
  :description "Describe cl-cmark-gfm here"
  :author "Chaitanya Gupta"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :defsystem-depends-on ("cffi-grovel")
  :depends-on ("cffi")
  :components ((:file "package")
               (:cffi-grovel-file "cmark-gfm-grovel")
               (:file "cmark-gfm")))
