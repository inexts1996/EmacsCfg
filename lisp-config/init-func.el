;;open init.el file
(defun open-my-init-file()
(interactive)
(find-file "~/.emacs.d/init.el"))

;;recompile directory
(defun inexts-byte-recompile-directory()
    (interactive)
    (byte-recompile-directory "~/.emacs.d/lisp-config")
    )

(provide 'init-func)
