(require 'owi-package-management)
(require 'owi-company)
(require 'owi-flycheck)

(defun setup-typescript ()
  (interactive)
  (lsp)
  (eldoc-mode +1)
  ;; add emmet (zen coding)
  (emmet-mode)
  (setq emmet-expand-jsx-className? t)
  (prettier-mode)
  )

(use-package typescript-mode
  :config
  (add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode)))

(use-package tide
  :after typescript-mode
  :config

  ;; formats the buffer before saving
  (add-hook 'before-save-hook 'tide-format-before-save)

  (add-hook 'typescript-mode-hook #'setup-typescript)

  :bind
  (:map typescript-mode-map
        ("C-c f" . tide-fix)
        ("C-c j" . tide-jump-to-definition)
        ("C-c C-j" . tide-jump-back)
        ))

(provide 'owi-typescript)
