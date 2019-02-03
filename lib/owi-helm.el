(require 'owi-package-management)

(use-package helm
  :ensure t
  :config

  (use-package helm-git-grep
    :ensure t
    :bind
    ("C-c g" . helm-git-grep)
    ("C-x C-f" . 'helm-find-files)
    ("C-x f" . 'helm-recentf)
    ("M-x" . helm-M-x))
  )

(provide 'owi-helm)
