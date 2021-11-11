;; SPDX-License-Identifier: MIT
;;
;;; init-yasnippet.el --- Init file to load yasnippet
;;
;; Copyright 2021 Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;

(require 'req-package)

;; yasnippet

(req-package yasnippet
  :ensure t)

(req-package yasnippet-snippets
  :ensure t
  :require yasnippet)

(provide 'init-yasnippet)
