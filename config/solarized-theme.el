;;; Load theme
(use-package solarized-theme
  :ensure t
  :load-path "themes"
  :init
  (setq solarized-theme-kit t)
  :config
  (load-theme 'solarized-dark t)
  )
