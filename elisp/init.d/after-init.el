;; SPDX-License-Identifier: MIT
;;
;;; after-init.el --- Real GNU Emacs Init file
;;
;; Copyright 2016 Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;

;; Add Emacs Lisp Package Archives
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(eval-when-compile (package-initialize))

;; Package installer by Edward E. Knyshov
(defun require-package (package)
  "refresh package archives, check package presence and install if it's not installed"
  (if (null (require package nil t))
      (progn (let* ((ARCHIVES (if (null package-archive-contents)
                                  (progn (package-refresh-contents)
                                         package-archive-contents)
                                package-archive-contents))
                    (AVAIL (assoc package ARCHIVES)))
               (if AVAIL
                   (package-install package)))
             (require package))))


;; Add required packages
(require-package 'req-package)
(require 'req-package)

(load-library "init-modes") ;; load Emacs modes
(load-library "init-backup-autosave") ;; backup and autosave settings
(load-library "init-helm") ;; load Emacs Helm completion/selection framework
(load-library "init-tidy") ;; load Emacs tidy interface

;; Finish required packages dependency loading
(req-package-finish)
