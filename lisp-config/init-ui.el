(tool-bar-mode -1)
(scroll-bar-mode -1)

;;full screen
(setq initial-frame-alist (quote ((fullscreen . maximized))))
(setq inhibit-splash-screen t)

(global-hl-line-mode t)

(provide 'init-ui)
