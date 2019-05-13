(setenv "HOME" "C:/Users/h.wang.SUB/")
(add-to-list 'load-path "~/.emacs.d/customize")
;;
(load "common.el")
(load "enhancement.el")
(load "theme.el")
;(load "magit.el")
(load "diff.el")
;(load "org.el")
;(global-set-key (kbd "C-c c") 'org-capture)										;(load "customize/smart-tab.el")
;(load "customize/mc.el")

;;(require 'xcscope)


;(add-to-list 'load-path "~/.emacs.d/el-get/yasnippet")
;(require 'yasnippet)
;(yas-global-mode 1)
;(yas/load-directory "~/.emacs.d/el-get/yasnippet/snippets")

;;do not set Tab to yasnippet because use ac-complete,so the yasnippet is used indirectly

;(add-to-list 'load-path "~/.emacs.d/el-get/expand-region")
;(load "customize/cedet.el")
;(load "er.el")
;(require 'expand-region)
;(global-set-key (kbd "C-,") 'er/expand-region)

;(load "customize/ack.el")
;(load "ace.el")
;(require 'ace-jump-mode)
;(global-set-key (kbd "C-;") 'ace-jump-word-mode)
;(global-set-key (kbd "C-:") 'ace-jump-line-mode)										;(load-library "ido.el")
;(require 'ido)
;(ido-mode t)
;(load "smex.el")

;(setq inferior-lisp-program "/usr/local/bin/sbcl") ;
;(add-to-list 'load-path "~/.emacs.d/slime/")
;(require 'slime-autoloads)
;(slime-setup '(slime-scratch slime-editing-commands))

;(require 'lsp) add
(require 'package)

;https://elpa.gnu.org/packages/

(setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "https://melpa.org/packages/")))
(add-to-list 'package-archives
          '("popkit" . "http://elpa.popkit.org/packages/"))
(package-initialize)
(require 'use-package)
;(use-package lsp-mode
;  :commands lsp
 ; :hook ((c-mode c++-mode objc-mode) . lsp)
  ;:config
	;		 (require 'lsp-clients)
	;		 (when (equal system-type 'darwin)
	;		   (setq lsp-clients-clangd-executable "/usr/local/opt/llvm/bin/clangd"))
;			 (lsp-clients-register-clangd))
;)


;;;
;;; Org Mode
;;;
(add-to-list 'load-path (expand-file-name "~/.emacs.d/org-mode/lisp"))
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(require 'org)
;;
;; Standard key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes '(wombat))
 '(display-battery-mode t)
 '(org-agenda-files nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
