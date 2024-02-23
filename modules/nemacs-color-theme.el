;;; nemacs-color-theme.el

;;; Commentary:

;;; Code:

(use-package doom-themes
  :ensure t
  :defer t)

(use-package sublime-themes
  :ensure t
  :defer t)

(use-package kaolin-themes
  :ensure t
  :defer t)

(use-package color-theme-sanityinc-tomorrow
  :ensure t
  :defer t)

(use-package ef-themes
  :ensure t
  :defer t)

(use-package standard-themes
  :ensure t
  :defer t)

(use-package naysayer-theme
  :ensure t
  :defer t)

(use-package gruber-darker-theme
  :ensure t
  :defer t)

(use-package solarized-theme
  :ensure t
  :defer t)

(use-package color-theme-sanityinc-solarized
  :ensure t
  :defer t)

(use-package jbeans-theme
  :ensure t
  :defer t)

(use-package jetbrains-darcula-theme
  :ensure t
  :defer t)

(use-package badwolf-theme
  :ensure t
  :defer t)

;; Themes that aren't on elpa
(add-to-list 'custom-theme-load-path (concat config-dir "/site-lisp/zenburn-emacs/"))
(add-to-list 'custom-theme-load-path (concat config-dir "/site-lisp/hc-zenburn-emacs/"))
(add-to-list 'custom-theme-load-path (concat config-dir "/site-lisp/emacs-color-theme-solarized/"))

;; The best theme there is.
;;(load-theme 'modus-vivendi)
(load-theme 'solarized t)

;;; nemacs-color-theme.el ends here
