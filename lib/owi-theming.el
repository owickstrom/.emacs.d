(require 'owi-package-management)

(setq-default line-spacing 0.1)
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

(use-package minimal-theme
  :ensure t)

(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-ir-black))

;; (defvar light-theme 'doom-one-light)
;; (defvar dark-theme 'doom-one)

;; (defun my/apply-theme (appearance)
;;   "Load theme, taking current system APPEARANCE into consideration."
;;   (mapc #'disable-theme custom-enabled-themes)
;;   (pcase appearance
;;     ('light (load-theme light-theme t))
;;     ('dark (load-theme dark-theme t))))

;; (if (boundp 'ns-system-appearance)
;;     ;; if we're on emacs-plus, we can used the patched-in hook for system
;;     ;; appearance to control light/dark themes
;;     (progn
;;       (add-hook 'ns-system-appearance-change-functions #'my/apply-theme))

;;   ;; otherwise, we use this package to do it based on sunlight
;;   (use-package theme-changer
;;     :after minimal-theme
;;     :config
;;     (setq calendar-location-name "Simrishamn, Sweden") 
;;     (setq calendar-latitude 55.55653)
;;     (setq calendar-longitude 14.35037)
;;     (change-theme light-theme dark-theme)))


(provide 'owi-theming)
