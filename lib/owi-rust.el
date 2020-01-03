;; (require 'owi-flycheck)

(defun my-rust-mode-hook ()
  ;; (flycheck-mode)
  ;; (flycheck-rust-setup)
  )

(use-package rust-mode
  :ensure t

  :mode ("\\.rs\\'" . rust-mode)

  :config
  ;; (use-package flycheck-rust :ensure t)
  (use-package cargo :ensure t)
  (add-hook 'rust-mode-hook #'my-rust-mode-hook)
  (add-hook 'rust-mode-hook 'cargo-minor-mode))

(provide 'owi-rust)
