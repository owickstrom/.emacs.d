(require 'owi-package-management)

(use-package markdown-mode
  :ensure t
  :mode ("\\.md\\'" . markdown-mode)
  ;; :hook flycheck-mode
  :config
  (setq markdown-command "pandoc"))

(provide 'owi-markdown)
