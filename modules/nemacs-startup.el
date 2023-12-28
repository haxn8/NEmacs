;;; NEmacs-startup.el --- All startup things

;;; Commentary:

;; This file is used to load all things needed during Emacs startup.

;;; Code:

(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;; Custom scratch-buffer message.
(setq initial-scratch-message ";; This buffer is for text that is not saved, and for Lisp evaluation.\n;; To create a file, visit it with <open> and enter text in its buffer.\n;; Never leave Emacs.\n;; Emacs is the greatest computer program on the planet!")

;;; NEmacs-startup.el ends here
