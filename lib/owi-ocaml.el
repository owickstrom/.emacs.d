(require 'owi-package-management)
(require 'owi-company)
(require 'owi-flycheck)

(use-package tuareg
  :ensure t
  :config

  (add-hook 'tuareg-mode-hook
            (lambda ()
              (lsp))))

(use-package ocamlformat
  :after tuareg)

(provide 'owi-ocaml)
