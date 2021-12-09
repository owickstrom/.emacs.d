(require 'owi-package-management)
(require 'owi-editing)
(require 'owi-projectile)

(use-package evil
  :init
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)

  :config ;; tweak evil after loading it
  (evil-mode)
  (evil-set-undo-system 'undo-tree)

  (define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
  (define-key evil-normal-state-map (kbd "C-c C-u") 'universal-argument)
  (define-key evil-normal-state-map (kbd "C-c C--") 'negative-argument)
  (define-key evil-normal-state-map (kbd "C-p") 'projectile-find-file)
  (define-key evil-normal-state-map (kbd "C-S-p") 'projectile-find-file-other-window)
  (define-key evil-normal-state-map (kbd "TAB") 'org-cycle)

  (evil-set-initial-state 'term-mode 'emacs)
  )

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(provide 'owi-evil)
