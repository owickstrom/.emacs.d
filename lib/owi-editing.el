(require 'owi-package-management)

(use-package undo-tree
  :config
  (global-undo-tree-mode)
  (setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo"))))

(use-package writeroom-mode
  :ensure t)

(provide 'owi-editing)
