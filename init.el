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
(when (file-exists-p custom-file)
  (load-file custom-file))

;; Add all libraries and packages inside `~/.emacs.d/elisp/' and its subdirs to
;; the load-path
(let ((default-directory "~/.emacs.d/elisp/"))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-subdirs-to-load-path))

(global-font-lock-mode 1) ;; Enable FontLock-mode
(winner-mode 1) ;; Enable winner-mode
(setq column-number-mode t) ;; Show column number
(setq-default fill-column 80) ;; Default to fill width 80

(setq user-mail-address "mkrupcale@matthewkrupcale.com")

;; Activate Cua-mode
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; postpone real initialization until after ELPA is loaded
(add-hook 'after-init-hook (lambda () (load-library "after-init")))
