(require 'org)

;;setq
(setq org-src-fontify-natively t)
(setq org-agenda-files '("~/.emacs.d/org"))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/.emacs.d/org/gtd.org" "Works")
	 "* TODO [#B] %?\n %i\n"
	 :empty-lines 1)))

(provide 'init-org)
