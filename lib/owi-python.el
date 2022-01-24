(require 'owi-package-management)

(use-package poetry
  :hook
  ;; activate poetry-tracking-mode when python-mode is active
  (python-mode . poetry-tracking-mode)
  )

(use-package py-yapf
  :ensure t
  :hook (python-mode . py-yapf-enable-on-save))

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (setq lsp-enabled-clients '(pyright))
                         (lsp))))  ; or lsp-deferred

(use-package poetry
  :config
  (poetry-tracking-mode)
 )

(provide 'owi-python)
