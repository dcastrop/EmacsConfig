;;; evil mode
(use-package evil
  :ensure t
  :init
  (setq evil-want-abbrev-expand-on-insert-exit nil)
  :config
  (evil-mode 1)
  )
