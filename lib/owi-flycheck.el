(require 'owi-package-management)

(use-package flycheck
  :ensure t
  :config
  (use-package flycheck-haskell
    :ensure t
    :config
    (add-to-list 'flycheck-disabled-checkers 'haskell-stack-ghc))
  :bind
  ("M-p" . flycheck-previous-error)
  ("M-n" . flycheck-next-error)
  )

(provide 'owi-flycheck)
