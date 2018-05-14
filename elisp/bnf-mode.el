;; SPDX-License-Identifier: GPL-2.0+
;;
;;; bnf-mode.el --- Highlight mode for Backus-Naur Form

;; Copyright (C) 2009 James Michael McDermott

;; Author: jmmcd <jamesmichaelmcdermott@gmail.com>

(define-generic-mode 'bnf-mode
 () ;; comment char: inapplicable because # must be at start of line
 nil ;; keywords
 '(
   ("^#.*" . 'font-lock-comment-face) ;; comments at start of line
   ("^<[^ \t\n]*?>" . 'font-lock-function-name-face) ;; LHS nonterminals
   ("<[^ \t\n]*?>" . 'font-lock-builtin-face) ;; other nonterminals
   ("::=" . 'font-lock-const-face) ;; "goes-to" symbol
   ("\|" . 'font-lock-warning-face) ;; "OR" symbol
   )
 '("\\.bnf\\'") ;; filename suffixes
 nil ;; extra function hooks
 "Major mode for BNF highlighting.")

(provide 'bnf-mode)
