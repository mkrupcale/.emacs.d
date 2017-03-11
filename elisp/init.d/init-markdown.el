;;; init-markdown.el --- Init file to load Emacs markdown mode
;;
;; Author: Edward E. Knyshov
;;

(require 'req-package)

;; md mode

(req-package markdown-mode :mode "\\.md\\'")

(provide 'init-markdown)
