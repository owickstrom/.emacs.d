(require 'owi-package-management)

(use-package company
  :init
  (setq company-dabbrev-downcase nil)
  (setq company-minimum-prefix-length 2)
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (global-set-key (kbd "C-SPC") 'company-capf)
  (global-set-key (kbd "C-S-SPC") 'company-dabbrev)
  )

(provide 'owi-company)
