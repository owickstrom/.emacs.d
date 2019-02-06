(require 'owi-package-management)
(require 'owi-flycheck)
(require 'owi-projectile)
(require 'owi-evil)
(require 'owi-tasty-run)

(use-package haskell-mode
  :init
  (setq-default haskell-compile-cabal-build-command "cabal v2-build all")
  (setq-default haskell-compile-cabal-build-alt-command "TASTY_pattern=\"\" cabal v2-test all")
  (setq-default haskell-process-type 'ghci)
  (setq-default haskell-process-log t)
  (setq-default haskell-process-args-ghci '("-ferror-spans" "-fshow-loaded-modules"))
  (setq-default haskell-font-lock-symbols nil)
  (setq-default haskell-stylish-on-save t)
  (setq-default hindent-reformat-buffer-on-save nil)

  :mode
  ("\\.l?hs$" . haskell-mode)
  

  :config
  (haskell-indentation-mode 1)
  (haskell-auto-insert-module-template)
  
  (add-hook 'haskell-mode-hook
    (lambda ()
      (setq projectile-tags-command "fast-tags -Re --exclude=.stack-work --exclude=dist-newstyle .")
      (flycheck-mode)
      (flycheck-haskell-setup)))

  (define-key haskell-mode-map (kbd "C-c c") 'haskell-compile)

  (define-key haskell-mode-map (kbd "C-c t m") 'haskell-tasty-run-tests-in-module)
  (define-key haskell-mode-map (kbd "C-c t t") 'haskell-tasty-run-test-at-point)

  (use-package hindent
    :ensure t
    :init
    (setq-default hindent-process-path "brittany")
    (setq-default hindent-reformat-buffer-on-save nil)
    :config
    (add-hook 'haskell-mode-hook (hindent-mode 1))))

(evil-set-initial-state 'interactive-haskell-mode 'emacs)
(evil-set-initial-state 'haskell-error-mode 'emacs)

(provide 'owi-haskell)
