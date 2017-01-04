;;; init-yaml.el --- Init file to load Emacs YAML mode
;;
;; Author: Edward E. Knyshov
;;

(require 'req-package)

;; yaml

(req-package yaml-mode :mode "\\.yml\\'")

(provide 'init-yaml)
