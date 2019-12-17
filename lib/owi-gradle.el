; (defvar gradle-build-directory nil "Directory in which to run gradle commands")

(require 'compile)

(use-package kotlin-mode
  :ensure t)

(defvar gradle-build-directory nil "Base directory used when invoking gradle")

(defun my-gradle-build ()
  (interactive)
  (add-to-list
   'compilation-error-regexp-alist
   '("^e: \\(.*?\\): (\\([0-9]+\\), \\([0-9]+\\)): .*$" 1 2 3))
  (if-let ((default-directory
             (or gradle-build-directory
                 (locate-dominating-file default-directory "build.gradle.kts"))))
      (compile "gradle build -x test -q")
    (message "Couldn't find Gradle build file above " default-directory)
    ))


(provide 'owi-gradle)
