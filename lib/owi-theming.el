(require 'owi-package-management)

(setq-default line-spacing 0)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(add-to-list 'default-frame-alist '(font . "Iosevka-15"))
(when window-system
  (set-frame-font "Iosevka 15"))

;; Use another font for variable pitch (like in eww)
(custom-set-faces
 '(variable-pitch ((t (:family "Linux Biolinum O" :height 160))))
 )

;; (use-package atom-one-dark-theme
;;   :ensure t)
;; 
(use-package minimal-theme
  :ensure t)

(use-package doom-themes
  :ensure t)

(use-package theme-changer
  :after minimal-theme
  :config
  (setq calendar-location-name "Simrishamn, Sweden") 
  (setq calendar-latitude 55.55653)
  (setq calendar-longitude 14.35037)
  (change-theme 'minimal-light 'minimal-black)
  )

(provide 'owi-theming)
