(setq pg-dir "~/.emacs.d/lisp/PG")
(setq fetch-pg
      (concat "git clone https://github.com/ProofGeneral/PG "
	      pg-dir))

(unless (file-exists-p pg-dir)
  (shell-command fetch-pg)
  (let ((default-directory (concat pg-dir "/")))
    (shell-command "make")))

;; Open .v files with Proof General's Coq mode
(load (concat pg-dir "/generic/proof-site"))

(use-package company-coq
  :ensure t
  :config
  (add-hook 'coq-mode-hook #'company-coq-mode))
