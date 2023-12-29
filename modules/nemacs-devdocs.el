;;; nemacs-devdocs.el

;;; Commentary:
;;; Its like dash, but all in Emacs!

;;; Code:

(use-package devdocs
  :ensure t
  :defer t)

(global-set-key (kbd "s-1") 'devdocs-lookup)

;;; nemacs-devdocs.el ends here
