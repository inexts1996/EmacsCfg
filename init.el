;property setting

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
    )

(require 'cl)
(defvar inexts/packages '(
			  company
			  material-theme
			  hungry-delete
			  helm
			  ;;async
			  ;;Flycheck
			  swiper
			  counsel
			  smartparens
			  js2-mode
			  ) "Default packages")

(setq package-selected-packages inexts/packages)
(defun inexts/packages-installed-p()
  (loop for pkg in inexts/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)
	)
  )

(unless (inexts/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg inexts/packages)
    (when (not (package-installed-p pkg))
    (package-install pkg)
    )
   )
  )
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode 1)
(global-company-mode t)
(global-hl-line-mode t)
(delete-selection-mode t) 
(require 'org)
(setq org-src-fontify-natively t)
(setq inhibit-splash-screen t)

;;recent file
(require 'recentf)
(recentf-mode 1)
(setq recntf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
;;full screen
(setq initial-frame-alist (quote ((fullscreen . maximized))))

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(load-theme 'material t)

(require 'hungry-delete)
(global-hungry-delete-mode)

(ivy-mode t)
(setq ivy-use-virtual-buffers 1)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook #'smartparens-mode)
(smartparens-global-mode t)

(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a")'org-agenda)
(global-auto-composition-mode t)

;;disable auto-save and auto-backup
(setq make-backup-files nil)
(setq auto-save-default nil)
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
