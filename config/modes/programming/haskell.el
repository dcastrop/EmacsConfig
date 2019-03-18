(use-package haskell-mode
  :ensure t
  :config
  (let ((my-local-path (expand-file-name "~/.local/bin")))
  (setenv "PATH" (concat my-local-path ":" (getenv "PATH")))
  (add-to-list 'exec-path my-local-path))

  (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
  ;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
  (defun haskell-mode-setup ()
    (setq haskell-process-type 'stack-ghci)
    ;; (setq haskell-font-lock-symbols 'unicode)
    (setq haskell-interactive-popup-errors nil)
    ;; -fshow-loaded-modules is a Hack for haskell-mode to work with
    ;; GHC 8.2. Taken from
    ;; https://github.com/haskell/haskell-mode/issues/1553#issuecomment-355227561
    (setq haskell-process-args-ghci
          '("-ferror-spans" "-fshow-loaded-modules"))
    (setq haskell-process-args-cabal-repl
          '("--ghc-options=-ferror-spans -fshow-loaded-modules"))
    (setq haskell-process-args-stack-ghci
          '("--ghci-options=-ferror-spans" "--no-build" "--no-load"
          "--ghci-options=-fshow-loaded-modules"))
    (setq haskell-process-args-cabal-new-repl
          '("--ghc-options=-ferror-spans -fshow-loaded-modules"))
    (setq haskell-process-log 't)
    )

   (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
   (add-hook 'haskell-mode-hook 'haskell-mode-setup)
   (add-hook 'haskell-mode-hook 'linum-mode)
   (add-hook 'haskell-mode-hook 'fci-mode))

(use-package intero
  :ensure t
  :config
  (add-hook 'haskell-mode-hook 'intero-mode))

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
