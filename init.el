(add-to-list 'load-path "~/.emacs.d/customize")
;;
(load "common.el")
(load "enhancement.el")
(load "theme.el")
;(load "customize/magit.el")
(load "diff.el")
;(load "customize/smart-tab.el")
;(load "customize/mc.el")

;;(require 'xcscope)


(add-to-list 'load-path "~/.emacs.d/el-get/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
(yas/load-directory "~/.emacs.d/el-get/yasnippet/snippets")

;;do not set Tab to yasnippet because use ac-complete,so the yasnippet is used indirectly

(add-to-list 'load-path "~/.emacs.d/el-get/expand-region")
;(load "customize/cedet.el")
(load "er.el")
;(load "customize/ack.el")
(load "ace.el")
										;(load-library "ido.el")
;(require 'ido)
;(ido-mode t)
;(load "smex.el")

(setq inferior-lisp-program "/usr/local/bin/sbcl") ;
(add-to-list 'load-path "~/.emacs.d/slime/")
(require 'slime-autoloads)
(slime-setup '(slime-scratch slime-editing-commands))
