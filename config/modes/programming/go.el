(use-package company-go
  :ensure t
  :config
  (add-hook 'go-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends) '(company-go))
              (company-mode)))
  )

(use-package go-mode
  :ensure go-eldoc
  :init
  (setenv "PATH" (concat "/home/dcastrop/go/bin/:" (getenv "PATH")))
  (setq exec-path (split-string (getenv "PATH") path-separator))
  :config
  (defun go-mode-setup ()
    (go-eldoc-setup)
    (setq gofmt-command "goimports")
    (add-hook 'before-save-hook 'gofmt-before-save))
  (add-hook 'go-mode-hook 'go-mode-setup)
)
