;; SPDX-License-Identifier: GPL-3.0+
;;
;;; ebnf-mode.el --- Highlight mode for Extended Backus-Naur Form

;; Copyright (C) 2011  Jeramey Crawford

;; Author: Jeramey Crawford <jeramey@antihe.ro>
;; Keywords: faces
;; URL: http://github.com/jeramey/ebnf-mode

;;; Commentary:

;; This major mode provides basic syntax highlighting for Extended
;; Backus-Naur Form metasyntax texts. For more information on what
;; EBNF is, consult Wikipedia:
;; <http://en.wikipedia.org/wiki/Extended_Backus-Naur_Form>

;;; Code:

;;;###autoload
(define-generic-mode 'ebnf-mode
  '(("(*" . "*)"))
  '("=")
  '(("^[^ \t\n][^=]+" . font-lock-variable-name-face)
    ("['\"].*?['\"]" . font-lock-string-face)
    ("\\?.*\\?" . font-lock-negation-char-face)
    ("\\[\\|\\]\\|{\\|}\\|(\\|)\\||\\|,\\|;" . font-lock-type-face)
    ("[^ \t\n]" . font-lock-function-name-face))
  '("\\.ebnf\\'")
  `(,(lambda () (setq mode-name "EBNF")))
  "Major mode for EBNF metasyntax text highlighting.")

(provide 'ebnf-mode)
;;; ebnf-mode.el ends here
