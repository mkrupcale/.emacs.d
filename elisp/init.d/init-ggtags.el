;; SPDX-License-Identifier: MIT
;;
;;; init-ggtags.el --- Init file to load Emacs ggtags mode
;;
;; Copyright 2016 Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;

(require 'req-package)

;; Enable ggtags-mode for C/C++/Java/ASM modes

(req-package ggtags
  :ensure t
  :config
  (add-hook 'c-mode-common-hook
	    (lambda ()
	      (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
		(ggtags-mode 1)))))

(provide 'init-ggtags)
