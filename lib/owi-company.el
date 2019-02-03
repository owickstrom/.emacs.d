(require 'owi-package-management)

(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  )

(provide 'owi-company)
