(require 'owi-package-management)
(require 'owi-company)
(require 'owi-flycheck)

(use-package tuareg
  :ensure t)

(use-package merlin
  :config
  (add-hook 'tuareg-mode-hook 'merlin-mode)
  (add-hook 'merlin-mode-hook #'company-mode)
  (setq merlin-error-after-save nil)
  (add-hook 'merlin-mode-hook (lambda () (flycheck-ocaml-setup)))
  (add-hook 'merlin-mode-hook 'flycheck-mode)

  :bind
  (:map merlin-mode-map
  ("C-c t"   . merlin-type-enclosing)
  ("C-c e"   . merlin-type-expr)
  ("C-c i"   . merlin-switch-to-mli)
  ("C-S-i"   . ocamlformat)

  ("C-c C-z"   . utop)
  ("C-c C-b"   . utop-eval-buffer)
  ("C-c C-e"   . utop-eval-phrase)
  ("C-c C-r"   . utop-eval-region)
  )
  )

(use-package flycheck-ocaml
  :after merlin
  :config
  (flycheck-ocaml-setup))

(use-package merlin-company
  :after merlin)

(use-package ocamlformat
  :after merlin)

(provide 'owi-ocaml)
