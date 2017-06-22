;;; init-cc.el --- Init file to load Emacs CC mode
;;
;; Author: Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;
;; Copyright 2016 Matthew Krupcale <mkrupcale@matthewkrupcale.com>
;;
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

(require 'req-package)

;; clang format

(req-package clang-format
  :commands clang-format-region)

;; completion with clang

(defconst cc-style
  '("bsd"
    (c-offsets-alist . ((innamespace . [0])))))

(req-package cc-mode
  :loader :built-in
  :config
  (c-add-style "cc-style" cc-style)
  (setq-default c-basic-offset 4)
  (setq-default c-default-style "cc-style"))

;; detect mode for .h file

(req-package dummy-h-mode
  :commands dummy-h-mode
  :init (add-to-list 'auto-mode-alist '("\\.h$" . dummy-h-mode))
  :config (progn
            (add-hook-exec 'dummy-h-mode
              (lambda ()
                (setq dummy-h-mode-default-major-mode 'c++-mode)))
            (add-hook-exec 'dummy-h-mode
              (lambda ()
                (setq dummy-h-mode-search-limit 60000)))))

(provide 'init-cc)
