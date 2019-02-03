(require 'owi-package-management)

(use-package magit
  :ensure t
  :config
  (use-package evil-magit
    :ensure t)
  :bind (("C-x g" . magit-status)))

(provide 'owi-git)
