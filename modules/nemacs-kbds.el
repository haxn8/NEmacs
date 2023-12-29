;;; nemacs-kbds.el

;;; Commentary:

;;; This is where all of my custom keybindings are managed.
;;; Luckily, I don't have a lot of them.

;;; Code:

(global-set-key (kbd "M-?") 'mark-paragraph)
(global-set-key (kbd "M-h") 'backward-kill-word)
(global-set-key (kbd "C-M-x") 'replace-string)
(global-set-key (kbd "C-c M-p") 'find-file-at-point)
(global-set-key (kbd "C-c b") 'switch-to-buffer)
(global-set-key (kbd "C-c m") 'delete-pair) ;; Thanks https://stackoverflow.com/a/45523605/12605386
(global-set-key (kbd "C-x C-/") 'highlight-symbol-at-point)
(global-set-key (kbd "C-x C-.") 'align-regexp)
(global-set-key (kbd "C-c h") 'compile)
(global-set-key (kbd "C-c c") 'imenu)

(global-set-key (kbd "\M-Z") 'zap-up-to-char)
(global-set-key (kbd "C-c d") 'duplicate-line)

;;; nemacs-kbds.el ends here
