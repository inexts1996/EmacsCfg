;property setting

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.)

;;(require 'org-install)
;;(require 'ob-tangle)
;;(org-babel-load-file (expand-file-name "inexts.org" user-emacs-directory))

(add-to-list 'load-path "~/.emacs.d/lisp-config/")
(require 'init-func)
(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)

(require 'recentf)
(require 'init-org)

(setq custom-file (expand-file-name "lisp-config/custom.el" user-emacs-directory))
(require 'init-keybindings)

(load-file custom-file)
