(setenv "PATH" (concat (getenv "PATH") ":~/.local/bin"))
(setq exec-path (append exec-path '("~/.local/bin")))

(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(setq inhibit-startup-screen t)

;; Don't show weird fringe characters for empty lines.
(setq-default indicate-empty-lines nil)

;; Remove big white square in Aquamacs
(setq visible-bell nil)
(setq ring-bell-function (lambda nil (message "")))

(provide 'owi-basics)
