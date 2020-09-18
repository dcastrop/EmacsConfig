(package-initialize)
(load "~/.emacs.d/load-directory")
(load "~/.emacs.d/use-package")
(load "~/.emacs.d/hl-line+")
(load-directory "~/.emacs.d/config")
(split-window-horizontally)
(other-window 1)
(split-window-vertically)
(balance-windows)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (merlin company-lsp lsp-haskell lsp-mode yaml-mode window-number utop use-package tuareg solarized-theme projectile multi-term markdown-mode magit intero go-eldoc gnu-elpa-keyring-update ghci-completion fill-column-indicator evil ebib company-quickhelp company-go company-ghci company-coq company-cabal auctex)))
 '(proof-three-window-mode-policy (quote hybrid) t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
