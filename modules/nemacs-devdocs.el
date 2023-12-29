;;; nemacs-devdocs.el

;;; Commentary:
;;; Its like dash, but all in Emacs!

;;; Code:

(use-package devdocs
  :ensure t
  :defer t)

(global-set-key (kbd "C-c \\") 'devdocs-lookup)

;;; nemacs-devdocs.el ends here
