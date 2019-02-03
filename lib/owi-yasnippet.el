(require 'owi-package-management)

(use-package yasnippet
  :ensure t
  :init
  (setq-default yas-prompt-functions '(yas-ido-prompt yas-dropdown-prompt))
  :config

  (yas-global-mode 1)

  (use-package yasnippet-snippets
    :ensure t
    :config nil)
  (use-package haskell-snippets
    :ensure t
    :config nil)
  )

(provide 'owi-yasnippet)
