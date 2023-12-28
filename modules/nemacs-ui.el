;;; nemacs-ui.el --- The file to configure my UI.

;;; Commentary:

;; This file is used to configure how Emacs looks.

;;; Code:

;; I hate the scroll bar.
(scroll-bar-mode -1)
;; I hate the tool bar even more.
(tool-bar-mode -1)

;; I hate line wraps.
(set-default 'truncate-lines t)
;; I like highlighted cursor line. 
(global-hl-line-mode +1)

;; Relative line numbers in `prog-mode' only.
(add-hook 'prog-mode-hook (lambda () (setq display-line-numbers 'relative)))

(load-file (concat config-dir "/modules/nemacs-color-theme.el"))
(load-file (concat config-dir "/modules/nemacs-font.el"))
(load-file (concat config-dir "/modules/nemacs-modeline.el"))

;;; nemacs-ui.el ends here
