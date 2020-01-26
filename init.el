;property setting

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.)

(add-to-list 'load-path "~/.emacs.d/lisp-config/")
(require 'init-packages)
(require 'init-ui)

(setq ring-bell-function 'ingnore)

(global-linum-mode 1)

(delete-selection-mode t) 
(require 'org)
(setq org-src-fontify-natively t)

;;recent file
(require 'recentf)
(recentf-mode 1)
(setq recntf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)


(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a")'org-agenda)
(global-auto-composition-mode t)

;;disable auto-save and auto-backup
(setq make-backup-files nil)
(setq auto-save-default nil)

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("8nx" "inexts")
					    ("8ms" "Macrosoft")
					    ))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;                        function                          ;;;;
;;;;                                                          ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun open-my-init-file()
(interactive)
(find-file "~/.emacs.d/init.el"))

;;keyboard
(global-set-key (kbd "<f2>") 'open-my-init-file)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 3)
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
