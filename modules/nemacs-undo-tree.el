;;; nemacs-undo-tree.el

;;; Commentary:

;;; Code:

(use-package undo-tree
  :ensure t
  :init
  (global-undo-tree-mode)
  (setq undo-tree-history-directory-alist `(("." . ,(concat (getenv "EMACS_BACKUP_DIR"))))))

;;; nemacs-undo-tree.el ends here
