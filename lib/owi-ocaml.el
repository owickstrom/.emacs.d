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

(use-package dune
  :after tuareg)

(use-package utop
  :after tuareg
  :config
  (setq utop-command "opam config exec -- dune utop . -- -emacs"))

(provide 'owi-ocaml)
