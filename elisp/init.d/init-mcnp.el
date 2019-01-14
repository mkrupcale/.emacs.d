;; SPDX-License-Identifier: MIT
;;
;;; init-mcnp.el --- Init file to load Emacs MCNP mode
;;
;; Copyright 2016 Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;

(require 'req-package)

;; mcnp mode

(req-package mcnpgen-mode :mode "\\.mcnp\\'")

(provide 'init-mcnp)
