(global-linum-mode 1)
(global-auto-revert-mode t)

;;recent file
(recentf-mode 1)
(setq recntf-max-menu-items 25)

;;disable auto-save and auto-backup
(setq make-backup-files nil)
(setq auto-save-default nil)

(setq ring-bell-function 'ingnore)
;;directory setq
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)
(setq dired-dwim-target t)
(put 'dired-find-alternate-file 'disabled nil)
(require 'dired-x)

(setq hippie-expand-try-functions-list
      '(
	try-expand-dabbrev
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill
	try-complete-file-name-partially
	try-complete-file-name
	try-expand-all-abbrevs
	try-expand-list
	try-expand-line
	try-complete-lisp-symbol-partially
	try-complete-lisp-symbol
	)
      )

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("8nx" "inexts")
					    ("8ms" "Macrosoft")
					    ))
(define-advice show-paren-function(:around (fn) fix-show-paren-function)
  (cond ((looking-at-p "\\s(")(funcall fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	    (funcall fn)))))
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(delete-selection-mode t)

(fset 'yes-or-no-p 'y-or-n-p)

(set-language-environment "UTF-8")

(provide 'init-better-defaults)
