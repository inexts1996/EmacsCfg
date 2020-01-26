(global-linum-mode 1)
(global-auto-revert-mode t)

;;recent file
(recentf-mode 1)
(setq recntf-max-menu-items 25)

;;disable auto-save and auto-backup
(setq make-backup-files nil)
(setq auto-save-default nil)

(setq ring-bell-function 'ingnore)

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("8nx" "inexts")
					    ("8ms" "Macrosoft")
					    ))

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(delete-selection-mode t)

(provide 'init-better-defaults)
