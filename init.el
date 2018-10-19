(package-initialize)
(load "~/.emacs.d/load-directory")
(load "~/.emacs.d/use-package")
(load-directory "~/.emacs.d/config")
(split-window-horizontally)
(split-window-horizontally)
(balance-windows)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (window-number solarized-theme yaml-mode projectile utop tuareg markdown-mode auctex ebib parsebib ghci-completion company-cabal company-ghci haskell-mode go-eldoc company-go company-coq multi-term flycheck fill-column-indicator evil company-quickhelp company magit git-commit use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
