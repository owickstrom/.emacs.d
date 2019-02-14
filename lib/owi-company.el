(require 'owi-package-management)

(use-package company
  :ensure t
  :init
  (setq company-dabbrev-downcase nil)
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (add-to-list 'company-backends '(company-dabbrev))
  )

(provide 'owi-company)
