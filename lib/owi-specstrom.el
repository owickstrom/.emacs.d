(require 'owi-package-management)

(add-to-list 'load-path "~/projects/specstrom/editor-support/emacs")

(require 'specstrom-mode)
(add-to-list 'auto-mode-alist '("\\.strom\\'" . specstrom-mode))

(provide 'owi-specstrom)
