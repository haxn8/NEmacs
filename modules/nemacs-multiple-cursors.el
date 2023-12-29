;;; nemacs-multiple-cursors.el

;;; Commentary:

;;; Code:

(use-package multiple-cursors
  :ensure t
  :defer t)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;;; nemacs-multiple-cursors.el ends here
