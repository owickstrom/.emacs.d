(require 'owi-package-management)

(use-package exec-path-from-shell
  :config
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "NIX_PATH"))

(provide 'owi-macos)
