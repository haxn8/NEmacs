;;; nemacs-rust-mode.el

;;; Commentary:

;;; Code:

(use-package rust-mode
  :mode "\\.rs\\'"
  :init
  :ensure t
  :defer t
  :config
  (setq rust-format-on-save t))



;;; nemacs-rust-mode.el ends here
