(require 'owi-package-management)

(use-package flycheck
  :ensure t
  :bind
  ("M-p" . flycheck-previous-error)
  ("M-n" . flycheck-next-error)
  )

(provide 'owi-flycheck)
