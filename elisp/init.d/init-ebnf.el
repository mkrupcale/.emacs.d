;; SPDX-License-Identifier: MIT
;;
;;; init-ebnf.el --- Init file to load Emacs EBNF mode
;;
;; Copyright 2018 Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;

(require 'req-package)

;; ebnf mode

(req-package ebnf-mode :loader :path :mode "\\.ebnf\\'")

(provide 'init-ebnf)
