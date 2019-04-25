(require 'owi-package-management)
(require 'owi-theming)

(use-package fstar-mode
  :ensure t
  :config
  (custom-theme-set-faces
   'solarized-dark
   '(fstar-subp-overlay-processed-face ((t (:background "#073642")))))
  )

(provide 'owi-fstar)
