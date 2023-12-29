;;; nemacs-magit.el

;;; Commentary:

;;; Code:

(use-package magit
  :ensure t
  :defer t
  :bind (("C-x g" . magit-status)
         ("C-x M-g" . magit-dispatch-popup)))

;;; nemacs-magit.el ends here
