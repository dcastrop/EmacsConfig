(use-package tuareg
  :ensure t
  :config
  (add-hook 'tuareg-mode-hook
            (lambda()
              (when (functionp 'prettify-symbols-mode)
                (prettify-symbols-mode))))
  (setq tuareg-prettify-symbols-full t)
  )

(use-package utop
  :ensure t
  :config
  (setq utop-command "opam config exec -- utop -emacs")
  )

(use-package merlin
  :ensure company
  :config
  (with-eval-after-load 'company
    (add-to-list 'company-backends 'merlin-company-backend))
  (autoload 'merlin-mode "merlin" nil t nil)
  (add-hook 'tuareg-mode-hook 'merlin-mode t)
  (add-hook 'caml-mode-hook 'merlin-mode t)
  (add-hook 'merlin-mode-hook 'company-mode)
  )
