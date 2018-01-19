;; SPDX-License-Identifier: MIT
;;
;;; init.el --- GNU Emacs Init file
;;
;; Copyright 2016 Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;

;(package-initialize)

(require 'package)

;; Set file for Emacs customization information
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; Add all libraries and packages inside `~/.emacs.d/elisp/' and its subdirs to
;; the load-path
(let ((default-directory "~/.emacs.d/elisp/"))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-subdirs-to-load-path))

(global-font-lock-mode 1) ;; Enable FontLock-mode
(winner-mode 1) ;; Enable winner-mode
(setq column-number-mode t) ;; Show column number
(setq-default fill-column 80) ;; Default to fill width 80

;; Activate Cua-mode
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; postpone real initialization until after ELPA is loaded
(add-hook 'after-init-hook (lambda () (load-library "after-init")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ggtags dummy-h-mode clang-format yaml-mode php-mode markdown-mode req-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
