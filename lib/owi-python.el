(require 'owi-package-management)

(use-package poetry
  :hook
  ;; activate poetry-tracking-mode when python-mode is active
  (python-mode . poetry-tracking-mode)
  )

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (setq-local lsp-enabled-clients '(pyright))
                         (lsp))))  ; or lsp-deferred

;; (use-package poetry
;;   :config
;;   (poetry-tracking-mode)
;;  )

(provide 'owi-python)
