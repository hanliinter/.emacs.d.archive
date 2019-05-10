;; forked from rmm5t/tabs.el

;;; Tab management

;; Spaces instead of tabs


;; If there is a tab, make it the size of 2 spaces


;; Mode specific indent sizes
;; TODO: Consider putting these in their own mode specific inits
;;(setq c-basic-offset 4)
;;(setq css-indent-offset 2)
;;(setq sh-basic-offset 2)
;;(set-default 'javascript-indent-level 2)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Hippie expand.  Groovy vans with tie-dyes.

(setq hippie-expand-try-functions-list
      '(yas-hippie-try-expand
        try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name
        try-complete-lisp-symbol))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Smart Tab
;; Borrowed from snippets at
;; http://www.emacswiki.org/emacs/TabCompletion
;; TODO: Take a look at https://github.com/genehack/smart-tab

(defvar smart-tab-using-hippie-expand t
  "turn this on if you want to use hippie-expand completion.")

(defun smart-tab (prefix)
  "Needs `transient-mark-mode' to be on. This smart tab is
  minibuffer compliant: it acts as usual in the minibuffer.

  In all other buffers: if PREFIX is \\[universal-argument], calls
  `smart-indent'. Else if point is at the end of a symbol,
  expands it. Else calls `smart-indent'."
  (interactive "P")
  (labels ((smart-tab-must-expand (&optional prefix)
                                  (unless (or (consp prefix)
                                              mark-active)
                                    (looking-at "\\_>"))))
    (cond ((minibufferp)
           (minibuffer-complete))
          ((smart-tab-must-expand prefix)
           (if smart-tab-using-hippie-expand
               (hippie-expand prefix)
             (dabbrev-expand prefix)))
          ((smart-indent)))))

(defun smart-indent ()
  "Indents region if mark is active, or current line otherwise."
  (interactive)
  (if mark-active
    (indent-region (region-beginning)
                   (region-end))
    (indent-for-tab-command)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "TAB") 'smart-tab)



 ;; My Own General Tab Completion
;(defun ac-yasnippet-candidate ()
;  (let ((table (yas/get-snippet-tables major-mode)))
;    (if table
;      (let (candidates (list))
;            (mapcar (lambda (mode)          
;              (maphash (lambda (key value)    
;                (push key candidates))          
;              (yas/snippet-table-hash mode))) 
;            table)
;        (all-completions ac-prefix candidates)))))

;(defface ac-yasnippet-candidate-face
;  '((t (:background "sandybrown" :foreground "black")))
;  "Face for yasnippet candidate.")

;(defface ac-yasnippet-selection-face
;  '((t (:background "coral3" :foreground "white"))) 
;  "Face for the yasnippet selected candidate.")

