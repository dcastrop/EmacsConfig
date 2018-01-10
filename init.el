(package-initialize)
(load "~/.emacs.d/load-directory")
(load "~/.emacs.d/use-package")
(load-directory "~/.emacs.d/config")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(haskell-font-lock-symbols (quote unicode))
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-load-or-reload-prompt t)
 '(haskell-process-log t)
 '(haskell-process-type (quote auto))
 '(haskell-process-use-presentation-mode t)
 '(haskell-tags-on-save t)
 '(inferior-haskell-wait-and-jump t)
 '(package-selected-packages
   (quote
    (ghci-completion company-cabal company-ghci yasnippet utop use-package tuareg solarized-theme merlin magit fill-column-indicator evil company-math company-ghc)))
 '(safe-local-variable-values
   (quote
    ((haskell-process-use-ghci . t)
     (haskell-indent-spaces . 2)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
