;;; NateNateNate's Emacs Configuration

;; Author: NateNateNate <natenatenat3@protonmail.com>
;; Repo: https://github.com/haxn8/NEmacs

;;; Code:

;; Load custom-env.el values
(add-to-list 'load-path (concat user-emacs-directory "environment-variables"))
(require 'custom-env)

;; Load bootstrap.el
(load-file (concat (getenv "EMACS_CONFIG_PATH") "nemacs-bootstrap.el"))

;;; init.el ends here

;;; Space for auto generated shit below
(load "custom.el" 'noerror)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(editorconfig plantuml-mode ob-restclient org-superstar feature-mode org-appear markdown-mode format-all hl-todo edit-indirect)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
