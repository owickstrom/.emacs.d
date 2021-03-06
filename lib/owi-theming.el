(require 'owi-package-management)

(setq-default line-spacing 0)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(add-to-list 'default-frame-alist '(font . "Iosevka SS09-18"))
(when window-system
  (set-frame-font "Iosevka SS09 18"))

;; Use another font for variable pitch (like in eww)
(custom-set-faces
 '(variable-pitch ((t (:family "Linux Biolinum O" :height 160))))
 )

;; (use-package atom-one-dark-theme
;;   :ensure t)
;; 
;; (use-package minimal-theme
;;   :ensure t)

(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-nord-light)
  )

(use-package solaire-mode
  :after doom-themes
  :ensure t
  :config
  (solaire-global-mode +1)
  (solaire-mode-swap-bg)
  )

(provide 'owi-theming)
