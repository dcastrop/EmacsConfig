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
  (add-hook 'LaTeX-mode-hook 'reftex-mode))
