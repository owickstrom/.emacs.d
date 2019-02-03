(require 'owi-package-management)
(require 'owi-flycheck)

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

  :config
  (add-to-list 'auto-mode-alist '("\\.l?hs$" . haskell-mode))
  (haskell-indentation-mode 1)
  (haskell-auto-insert-module-template)
  
  (add-hook 'haskell-mode-hook
    (lambda ()
	(flycheck-mode)
	(flycheck-haskell-setup)))
  (use-package hindent
    :init
    (setq-default hindent-process-path "brittany")
    (setq-default hindent-reformat-buffer-on-save nil)
    :config
    (add-hook 'haskell-mode-hook (hindent-mode 1))))

(provide 'owi-haskell)
