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
    (company-coq yaml-mode window-number utop use-package tuareg solarized-theme markdown-mode magit latex-pretty-symbols ghci-completion ghc fill-column-indicator evil ebib company-quickhelp company-ghci company-cabal))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
