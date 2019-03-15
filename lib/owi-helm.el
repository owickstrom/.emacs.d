(require 'owi-package-management)

(use-package helm
  :ensure t
  :init
  (setq helm-mode-fuzzy-match t)
  :config

  (use-package helm-git-grep
    :ensure t
    :bind
    ("C-c g" . helm-git-grep)
    ("C-x C-f" . 'helm-find-files)
    ("C-x f" . 'helm-recentf)
    ("C-c h e" . 'helm-etags-select)
    ("M-x" . helm-M-x))

  (use-package helm-projectile
    :ensure t)
  )

(provide 'owi-helm)
