(require 'owi-package-management)
(require 'owi-projectile)

(use-package evil
  :ensure t
  :config ;; tweak evil after loading it
  (evil-mode)

  (define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
  (define-key evil-normal-state-map (kbd "C-c C-u") 'universal-argument)
  (define-key evil-normal-state-map (kbd "C-p") 'projectile-find-file)

  (evil-set-initial-state 'term-mode 'emacs)
  (evil-set-initial-state 'interactive-haskell-mode 'emacs)
  (evil-set-initial-state 'haskell-error-mode 'emacs)
  )

(provide 'owi-evil)
