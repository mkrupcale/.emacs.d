;; SPDX-License-Identifier: MIT
;;
;;; init-ldap.el --- Init file to load Emacs LDAP mode
;;
;; Copyright 2019 Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;

(require 'req-package)

;; ldap mode

(req-package ldap-mode :mode "\\.ldif\\'")

(provide 'init-ldap)
