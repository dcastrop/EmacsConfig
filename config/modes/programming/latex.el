(use-package parsebib
  :ensure t)

(use-package ebib
  :ensure t)

(use-package tex
  :ensure auctex
  )

(use-package latex
  :defer t
  :config
  (use-package preview)
  (setq Tex-PDF-mode t)
  (setq ispell-program-name "aspell")
  (setq ispell-dictionary "english")
  (add-hook 'LaTeX-mode-hook 'flyspell-mode)
  (add-hook 'LaTeX-mode-hook 'flyspell-buffer)
  (add-hook 'LaTeX-mode-hook 'reftex-mode)
  (add-hook 'LaTeX-mode-hook
	    (lambda ()
	      (add-to-list 'LaTeX-indent-environment-list
			   '("equation" current-indentation))
	      (add-to-list 'LaTeX-indent-environment-list
			   '("mathpar" current-indentation)))))
