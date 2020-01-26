(require 'org)

;;setq
(setq org-src-fontify-natively t)
(setq org-agenda-files '("~/org"))

;;keybindings
(global-set-key (kbd "C-c a")'org-agenda)

(provide 'init-org)
