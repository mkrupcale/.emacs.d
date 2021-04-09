;; SPDX-License-Identifier: MIT
;;
;;; init-lsp.el --- Init file to load Emacs LSP mode
;;
;; Copyright 2021 Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;

(require 'req-package)

;; lsp-mode

(req-package lsp-mode
  :ensure t
  :init (setq lsp-keymap-prefix "C-c l")
  :hook ((f90-mode . lsp-deferred))
  :commands (lsp lsp-deferred))

(req-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

(setq read-process-output-max (* 1024 1024)) ;; 1 MiB
(setq gc-cons-threshold 100000000) ;; 100 MB

(provide 'init-lsp)
