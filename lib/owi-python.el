(require 'owi-package-management)

(use-package company
  :ensure t
  :init
  (advice-add 'python-mode :before 'elpy-enable)
 )

(provide 'owi-python)
