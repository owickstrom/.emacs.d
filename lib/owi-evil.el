(require 'owi-package-management)

(use-package evil
  :ensure t
  :config ;; tweak evil after loading it
  (evil-mode)

  (define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
  (define-key evil-normal-state-map (kbd "C-c C-u") 'universal-argument))

(provide 'owi-evil)
