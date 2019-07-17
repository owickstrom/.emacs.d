(require 'owi-package-management)

(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :init
  (setq projectile-test-suffix-function 'my-projectile-test-suffix)
  )

(defun my-projectile-test-suffix (project-type)
  (cond
   ((member project-type '(haskell-cabal haskell-stack nix generic)) "Test")
   (t (projectile-test-suffix project-type))))

(provide 'owi-projectile)
