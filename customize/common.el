(fset 'yes-or-no-p 'y-or-n-p)


(setq debug-on-error t)
;(Sete-fontset-font (frame-parameter nil 'font)  
 ;                 'unicode '("STHeiti" . "unicode-bmp")) 
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq-default tab-width 4)

(setq inhibit-startup-message t)


(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path(append exec-path ' ("/usr/local/bin")))

;(add-to-list 'load-path "~/.emacs.d/")



(setq column-number-mode t)

(setq frame-title-format "why_'s @%b")




(setq-default indent-tab-mode nil)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (wombat)))
 '(display-battery-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" user-emacs-directory))

(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 26)
(global-set-key (kbd "<C-x> <C-r>") 'recentf-open-files)


