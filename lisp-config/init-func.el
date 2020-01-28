0;;open init.el file
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;;recompile directory
(defun inexts-byte-recompile-directory()
  (interactive)
  (byte-recompile-directory "~/.emacs.d/lisp-config")
  )

(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max))
  )

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if(region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indented selected region.")
	  )
      (progn
	(indent-buffer)
	(message "Indent buffer.")
	)
      )
    )
  )

(defun hidden-dos-eol()
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M[])
  )

(defun remove-dos-eol()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match ""))
  )
(provide 'init-func)
