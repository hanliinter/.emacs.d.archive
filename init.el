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
(require 'expand-region)
(global-set-key (kbd "C-,") 'er/expand-region)

;(load "customize/ack.el")
(load "ace.el")
(require 'ace-jump-mode)
(global-set-key (kbd "C-;") 'ace-jump-word-mode)
(global-set-key (kbd "C-:") 'ace-jump-line-mode)										;(load-library "ido.el")
;(require 'ido)
;(ido-mode t)
;(load "smex.el")

(setq inferior-lisp-program "/usr/local/bin/sbcl") ;
(add-to-list 'load-path "~/.emacs.d/slime/")
(require 'slime-autoloads)
(slime-setup '(slime-scratch slime-editing-commands))

;(require 'lsp) add
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(add-to-list 'package-archives
          '("popkit" . "http://elpa.popkit.org/packages/"))
(package-initialize)
(require 'use-package)
(use-package lsp-mode
  :commands lsp
  :hook ((c-mode c++-mode objc-mode) . lsp)
  :config
			 (require 'lsp-clients)
			 (when (equal system-type 'darwin)
			   (setq lsp-clients-clangd-executable "/usr/local/opt/llvm/bin/clangd"))
;			 (lsp-clients-register-clangd))
)
