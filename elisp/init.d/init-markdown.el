;; SPDX-License-Identifier: LGPL-3.0+
;;
;;; init-markdown.el --- Init file to load Emacs markdown mode
;;
;; Copyright (C) 2017 Edward E. Knyshov
;;

(require 'req-package)

;; md mode

(req-package markdown-mode :mode "\\.md\\'")

(provide 'init-markdown)
