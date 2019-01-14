;; SPDX-License-Identifier: MIT
;;
;;; init-bnf.el --- Init file to load Emacs EBNF mode
;;
;; Copyright 2018 Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;

(require 'req-package)

;; bnf mode

(req-package bnf-mode :mode "\\.bnf\\'")

(provide 'init-bnf)
