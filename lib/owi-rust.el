(require 'owi-flycheck)

(use-package rust-mode
  :ensure t
  :defer t
  :init
  (require 'rust-mode)
  (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

  :config
  (use-package flycheck-rust
    :ensure t)

  (defun my-rust-mode-hook ()
    (flycheck-mode)
    (cargo-minor-mode)
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
  (add-hook 'rust-mode-hook 'my-rust-mode-hook))

(provide 'owi-rust)
