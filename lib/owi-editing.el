(require 'owi-package-management)

(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode))

(use-package writeroom-mode
  :ensure t)

(provide 'owi-editing)
