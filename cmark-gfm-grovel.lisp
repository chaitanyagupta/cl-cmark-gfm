(in-package #:cmark-gfm)

(include "cmark.h")

(ctype size "size_t")

(bitfield options
          ((:default "CMARK_OPT_DEFAULT"))
          ((:sourcepos "CMARK_OPT_SOURCEPOS"))
          ((:hardbreaks "CMARK_OPT_HARDBREAKS"))
          ((:safe "CMARK_OPT_SAFE"))
          ((:nobreaks "CMARK_OPT_NOBREAKS"))
          ((:validate-utf8 "CMARK_OPT_VALIDATE_UTF8"))
          ((:smart "CMARK_OPT_SMART"))
          ((:github-pre-lang "CMARK_OPT_GITHUB_PRE_LANG"))
          ((:liberal-html-tag "CMARK_OPT_LIBERAL_HTML_TAG"))
          ((:footnotes "CMARK_OPT_FOOTNOTES")))
