(use-package fill-column-indicator
  :ensure t
  :config
  (setq fci-rule-column 80)
  (setq fci-rule-width 3)
  (setq fci-rule-color "white")
  (add-hook 'after-change-major-mode-hook 'fci-mode)
  )
