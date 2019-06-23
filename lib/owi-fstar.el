(require 'owi-package-management)
(require 'owi-theming)

(use-package fstar-mode
  :ensure t
  :config
  (custom-theme-set-faces
   'user
   '(fstar-subp-overlay-processed-face ((t (:background "#EEFFEE")))))
  )

(provide 'owi-fstar)
