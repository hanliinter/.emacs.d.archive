(add-to-list 'load-path "~/.emacs.d/site-lisp/expand-region.el/")
(require 'expand-region)
(global-set-key (kbd "C-q") 'er/expand-region)
