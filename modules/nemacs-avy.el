;;; nemacs-avy.el

;;; Commentary:

;;; Code:

(use-package avy
  :ensure t
  :defer t
  :bind
  ("M-n" . avy-goto-char))

(global-set-key (kbd "C-c j") 'avy-copy-line)
(global-set-key (kbd "C-c x") 'avy-goto-char-in-line)
(global-set-key (kbd "C-c k") 'avy-kill-whole-line)

;;; nemacs-avy.el ends here
