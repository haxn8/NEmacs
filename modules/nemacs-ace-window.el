;;; nemacs-ace-window.el

;;; Commentary:

;;; Code:

(use-package ace-window
  :ensure t
  :defer t
  :bind (("M-o" . ace-window)
         ("M-O" . ace-swap-window)))

;;; nemacs-ace-window.el ends here
