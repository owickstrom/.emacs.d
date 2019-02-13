(require 'owi-package-management)

(use-package company
  :ensure t
  :init
  (setq company-dabbrev-downcase nil)
  (add-to-list 'company-backends '(company-dabbrev))
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  )

(provide 'owi-company)
