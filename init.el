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
;;(load "custom.el" 'noerror)

