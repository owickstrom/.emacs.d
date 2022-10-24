(require 'owi-package-management)

(use-package plantuml-mode
  :config
  (setq plantuml-executable-path (locate-file "plantuml" (getenv "PATH")))
  (setq plantuml-default-exec-mode 'executable)
  )

(provide 'owi-agda)
