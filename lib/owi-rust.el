(require 'owi-flycheck)
(require 'owi-company)

(defun my-rust-mode-hook ()
  (lsp)
  )

(use-package rust-mode

  :mode ("\\.rs\\'" . rust-mode)

  :config
  (use-package cargo :ensure t)
  (add-hook 'rust-mode-hook #'my-rust-mode-hook)
  (add-hook 'rust-mode-hook 'cargo-minor-mode))

(provide 'owi-rust)
