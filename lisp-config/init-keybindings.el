
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(global-set-key (kbd "<f2>") 'open-my-init-file)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "<f3>") 'inexts-byte-recompile-directory)
(global-set-key (kbd "C-c p f") 'counsel-git)
(global-set-key (kbd "C-c a")'org-agenda)
(global-set-key (kbd "C-M-/") 'hippie-expand)
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)
(global-set-key (kbd "M-s o") 'occur-dwim)
(global-set-key (kbd "M-s i")'counsel-imenu)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-;") 'iedit-mode)

;;org keybindings
(global-set-key (kbd "C-c r") 'org-capture)
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
    )

;;nerotree keybindings
(global-set-key (kbd "<f8>")'neotree-toggle)

;;company keybindings
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous)
  )

(provide 'init-keybindings)
