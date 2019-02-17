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

  :bind
  (:map haskell-mode-map
	("C-c c" . haskell-compile)
	("C-c t m" . haskell-tasty-run-tests-in-module)
	("C-c t t" . haskell-tasty-run-test-at-point))

  :config
  (haskell-indentation-mode 1)
  
  (add-hook 'haskell-mode-hook
	    (lambda ()
	      (setq projectile-tags-command "fast-tags -Re --exclude=.stack-work --exclude=dist-newstyle .")
	      (haskell-auto-insert-module-template)
	      (flycheck-mode)
	      (flycheck-haskell-setup)
        (paredit-mode 1)
        (hindent-mode 1)))

  (use-package hindent
    :ensure t
    :init
    (setq-default hindent-process-path "brittany")
    (setq-default hindent-reformat-buffer-on-save nil)

    :bind
    (:map hindent-mode-map
	  ("M-q" . hindent-reformat-decl))))

(evil-set-initial-state 'interactive-haskell-mode 'emacs)
(evil-set-initial-state 'haskell-error-mode 'emacs)

(provide 'owi-haskell)
