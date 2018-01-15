;; Show line numbers
(global-linum-mode t)
(line-number-mode t)
(setq linum-format "%4d")
(set-default 'truncate-lines t)

;; Disable menus and toolbar
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)

;; auto insert closing bracket
(electric-pair-mode 1)

;; turn on highlighting current line
(global-hl-line-mode 1)

;; turn on bracket match highlight
(show-paren-mode 1)

;; set a default font
(when (member "DejaVu Sans Mono" (font-family-list))
  (set-face-attribute 'default nil :font "DejaVu Sans Mono-10"))

;; show cursor position within line
(column-number-mode 1)

;; backup in one place. flat, no tree structure
(setq backup-directory-alist
      '(("." . "~/.emacs.d/backup"))
      backup-by-copying t    ; Don't delink hardlinks
      version-control t      ; Use version numbers on backups
      delete-old-versions t  ; Automatically delete excess backups
      kept-new-versions 20   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
      )
(setq auto-save-file-name-transforms
      `((".*" ,"~/.emacs.d/autosave" t)))

;; Do not use tabs for indentation
(setq-default indent-tabs-mode nil)

;; set default tab char's display width to 4 spaces
(setq-default tab-width 4)

;; No trailing whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; line width
(setq-default fill-column 80)
