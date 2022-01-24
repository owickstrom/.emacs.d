(require 'owi-package-management)

(use-package helm
  :ensure t)

(use-package helm-lsp
  :ensure t
  :after (lsp-mode helm)
  :bind
  (:map lsp-mode-map
        ("C-M-," . helm-lsp-diagnostics))

  :config
  (define-key lsp-mode-map [remap xref-find-apropos] #'helm-lsp-workspace-symbol)
  )

(use-package helm-projectile
  :ensure t
  :after helm)

(provide 'owi-helm)
