;; SPDX-License-Identifier: LGPL-3.0+
;;
;;; init-yaml.el --- Init file to load Emacs YAML mode
;;
;; Author: Edward E. Knyshov
;;
;; Copyright (C) 2017 Edward E. Knyshov
;;

(require 'req-package)

;; yaml

(req-package yaml-mode :mode "\\.yml\\'")

(provide 'init-yaml)
