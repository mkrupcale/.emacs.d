;; SPDX-License-Identifier: MIT
;;
;;; init-rust.el --- Init file to load Emacs Rust mode
;;
;; Copyright 2018 Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;

(require 'req-package)

;; rust mode

(req-package rust-mode
  :ensure t
  :mode "\\.rs\\'")

(provide 'init-rust)
