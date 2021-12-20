(require 'owi-package-management)

(use-package helm)

(use-package helm-lsp
  :after helm
  :config
  (define-key lsp-mode-map [remap xref-find-apropos] #'helm-lsp-workspace-symbol))

(use-package helm-projectile
  :after helm)

(provide 'owi-helm)
