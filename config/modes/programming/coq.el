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

;; Configuration for proof general
(setq proof-splash-enable nil)
(customize-set-variable 'proof-three-window-mode-policy 'hybrid)

;; mathcomp + ssreflect
(setq mc-dir "~/.emacs.d/lisp/math-comp")
(setq fetch-mc
      (concat "git clone https://github.com/math-comp/math-comp.git "
	      mc-dir))

(unless (file-exists-p mc-dir)
  (shell-command fetch-mc))

(load-file (concat mc-dir "/mathcomp/ssreflect/pg-ssr.el"))

(use-package company-coq
  :ensure t
  :config
  (add-hook 'coq-mode-hook #'company-coq-mode)
  (setq company-coq-disabled-features '(prettify-symbols)))
