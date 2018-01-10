(use-package haskell-mode
  :ensure t
  :config
  (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;;  (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
  (add-hook 'haskell-mode-hook 'linum-mode)
  (add-hook 'haskell-mode-hook 'fci-mode)
  (let ((my-local-path (expand-file-name "~/.local/bin")))
  (setenv "PATH" (concat my-local-path ":" (getenv "PATH")))
  (add-to-list 'exec-path my-local-path))

  (custom-set-variables
   '(haskell-font-lock-symbols (quote unicode))
;;   '(haskell-hoogle-command nil)
;;   '(haskell-mode-hook
;;     (quote
;;      (linum-mode turn-on-haskell-indentation turn-on-haskell-doc-mode)) t)
   '(haskell-process-auto-import-loaded-modules t)
   '(haskell-process-load-or-reload-prompt t)
   '(haskell-process-log t)
;;   '(haskell-process-suggest-language-pragmas nil)
;;   '(haskell-process-suggest-no-warn-orphans t)
   '(haskell-process-type (quote auto))
   '(haskell-process-use-presentation-mode t)
   '(haskell-tags-on-save t)
   '(inferior-haskell-wait-and-jump t)
   '(safe-local-variable-values
     (quote
      ((haskell-process-use-ghci . t)
       (haskell-indent-spaces . 2)))))
  )

(use-package ghc
  :ensure t
  :config
  (autoload 'ghc-init "ghc" nil t)
  (autoload 'ghc-debug "ghc" nil t)
  (add-hook 'haskell-mode-hook (lambda () (ghc-init)))
  )


(use-package company-ghc
  :ensure t
  :config
  (add-to-list 'company-backends 'company-ghc)
  (add-hook 'haskell-mode-hook 'company-mode)
  (add-hook 'haskell-interactive-mode-hook 'company-mode))


(use-package company-ghci
  :ensure t
  :config
  (add-to-list 'company-backends 'company-ghci)
  (add-hook 'haskell-mode-hook 'company-mode)
  (add-hook 'haskell-interactive-mode-hook 'company-mode))

(use-package company-cabal
  :ensure t
  :config
  (add-to-list 'company-backends 'company-cabal))

(use-package ghci-completion
  :ensure t)
