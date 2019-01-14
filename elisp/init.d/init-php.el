;; SPDX-License-Identifier: MIT
;;
;;; init-php.el --- Init file to load Emacs PHP mode
;;
;; Copyright 2016 Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;

(require 'req-package)

;; php mode

(req-package php-mode
  :ensure t
  :mode "\\.php\\'")

(provide 'init-php)
