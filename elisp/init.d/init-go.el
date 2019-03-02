;; SPDX-License-Identifier: MIT
;;
;;; init-go.el --- Init file to load Emacs Go mode
;;
;; Copyright 2019 Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;

(require 'req-package)

;; go mode

(req-package go-mode
  :ensure t
  :mode "\\.go\\'")

(provide 'init-go)
