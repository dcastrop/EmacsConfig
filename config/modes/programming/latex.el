(use-package latex-pretty-symbols
  :ensure t)

(use-package parsebib
  :ensure t)

(use-package ebib
  :ensure t)

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
