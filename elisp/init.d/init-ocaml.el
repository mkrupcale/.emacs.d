;; SPDX-License-Identifier: MIT
;;
;;; init-ocaml.el --- Init file to load Emacs OCaml mode
;;
;; Copyright 2023 Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;

(require 'req-package)

;; ocaml mode

(req-package tuareg
  :ensure t
  :mode ("\\.mli?\\'" . tuareg-mode))

(provide 'init-ocaml)
