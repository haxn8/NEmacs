;;; nemacs-markdown.el

;;; Commentary:

;; I hardly use Markdown because I have org-mode.

;;; Code:
(use-package markdown-mode
  :ensure t
  :mode (".md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown")
  :bind (:map markdown-mode-map
              ("C-c C-e" . markdown-do)))

;;; nemacs-markdown.el ends here
