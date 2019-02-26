(require 'owi-package-management)

(setq-default line-spacing 0)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(add-to-list 'default-frame-alist '(font . "Iosevka-13"))
(when window-system
  (set-frame-font "Iosevka 13"))

(use-package atom-one-dark-theme
  :ensure t
  :config
  (load-theme 'atom-one-dark))

(use-package minimal-theme
  :ensure t)

(provide 'owi-theming)
