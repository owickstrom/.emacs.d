(require 'owi-package-management)

(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  :bind-keymap
  ("C-c p" . projectile-command-map)
  )

(provide 'owi-projectile)
