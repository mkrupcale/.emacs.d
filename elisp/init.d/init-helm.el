;; SPDX-License-Identifier: MIT
;;
;;; init-helm.el --- Init file to load Emacs Helm package
;;
;; Copyright 2017 Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;

(require 'req-package)

(req-package helm
  :ensure t
  :bind (("C-c r" . helm-recentf)
	 ("C-c y" . helm-show-kill-ring))
  :config (require 'helm-config))

(provide 'init-helm)
