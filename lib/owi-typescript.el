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
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))
  (add-hook 'typescript-mode-hook #'setup-typescript)

  :bind
  (("C-S-i" . prettier-prettify)))

(provide 'owi-typescript)
