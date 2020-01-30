
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
			  flycheck
			  swiper
			  counsel
			  smartparens
			  js2-mode
			  popwin
			  neotree
			  all-the-icons
			  expand-region
			  iedit
			  org-pomodoro
			  ;;C Sharp
			  csharp-mode
			  omnisharp
			  yasnippet
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

(require 'hungry-delete)
(global-hungry-delete-mode)

(ivy-mode t)
(setq ivy-use-virtual-buffers 1)

;;(add-hook 'emacs-lisp-mode-hook #'smartparens-mode)
(smartparens-global-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(require 'popwin)

(popwin-mode t)
(global-company-mode t)

(load-theme 'material t)

(require 'neotree)
(setq neo-theme (if(display-graphic-p)'icon 'arrow))

(require 'all-the-icons)

(require 'org-pomodoro)

;;CSharp settings
(add-hook 'csharp-mode-hook 'omnisharp-mode)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-omnisharp))
(add-hook 'csharp-mode-hook #'company-mode)

;;yas settings
(add-hook 'prog-mode-hook #'yas-minor-mode)
(provide 'init-packages)
