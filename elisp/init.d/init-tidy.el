;; SPDX-License-Identifier: MIT
;;
;;; init-tidy.el --- Init file to load Emacs interface to the HTML Tidy program
;;
;; Copyright 2016 Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;

(require 'req-package)

;; tidy interface

(req-package tidy :commands (tidy-buffer
			     tidy-parse-config-file
			     tidy-save-settings
			     tidy-describe-options))

(add-hook 'nxml-mode-hook (lambda () (tidy-build-menu nxml-mode-map)))

(provide 'init-tidy)
