(use-package lsp-mode
  :ensure t
  )

(use-package haskell-mode
  :ensure t
  :defer t
  :init (add-hook 'haskell-mode-hook 'haskell-decl-scan-mode)
  (add-hook 'haskell-mode-hook #'lsp)
  :bind (:map haskell-mode-map
              ("C-c h" . hoogle)
              ("C-c s" . haskell-mode-stylish-buffer)
              )
  :config (message "Loaded haskell-mode")
  (setq haskell-mode-stylish-haskell-path "brittany")
  (setq haskell-hoogle-url "https://www.stackage.org/lts/hoogle?q=%s")
  )

(use-package lsp-haskell
  :ensure t
  :after lsp
  :config (message "Loaded lsp-haskell")
  (setq lsp-haskell-process-path-hie "hie-wrapper")
  )

(use-package company-lsp
  :ensure t
  :config
  (push 'company-lsp company-backends)
  )
