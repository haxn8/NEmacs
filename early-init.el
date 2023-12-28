;;; early-init.el --- Emacs 27+ pre-initialisation config

;;; Commentary:

;; Emacs 27+ loads this file before (normally) calling
;; `package-initialize'.  We use this file to suppress that automatic
;; behaviour so that startup is consistent across Emacs versions.

;;; Code:

(setq package-enable-at-startup nil)

;; So we can detect this having been loaded
(provide 'early-init)

;; Set the garbage collection threshold to 100 MB
(setq gc-cons-threshold 100000000)
;; Set to a higher percentage to reduce frequency (default is 0.1)
(setq gc-cons-percentage 0.6)

;;; early-init.el ends here
