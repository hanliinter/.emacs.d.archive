;;cedet
(require 'cedet)
(global-ede-mode t)
;(semantic-load-enable-gaudy-code-helpers)
;(semantic-load-enable-semantic-debugging-helpers)
;(setq semantic-default-submodes '(global-semantic-idle-scheduler-mode
;				  global-semanticdb-minor-mode
;				  global-semantic-idle-summary-mode
;				  global-semantic-mru-bookmark-mode))

;(semantic-mode 1)




;(defconst cedet-user-include-dirs
 ; (list ".." "../include" "../inc" "../common" "../public"
;	"../.." "../../include" "../..inc" "../../common" "../../public"))

;(defconst cedet-win32-include-dirs
 ;  (list "D:/Program Files/Microsoft Visual Studio 10.0/VC/include"))

;(require 'semantic-c nil 'noerror)
;(let ((include-dirs cedet-user-include-dirs))
 ; (when (eq system-type 'windows-nt)
  ;  (setq include-dirs (append include-dirs cedet-win32-include-dirs)))
 ; (mapc(lambda (dir)
;	 (semantic-add-system-include dir 'c++-mode)
;	 (semantic-add-system-include dir 'c-mode))
;	 include-dirs))
