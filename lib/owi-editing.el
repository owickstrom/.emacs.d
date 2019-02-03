(require 'owi-package-management)

(use-package smartparens
  :ensure t
  :config
  (setq sp-show-pair-from-inside nil)
  (require 'smartparens-config)
  (smartparens-global-mode 1))

(use-package undo-tree
  :config
  (global-undo-tree-mode))

(provide 'owi-editing)
