(use-package parsebib
  :ensure t)

(use-package ebib
  :ensure t)

(use-package tex-site
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
  (add-hook 'LaTeX-mode-hook 'reftex-mode))
