;;; nemacs-hl-todo.el

;;; Commentary:

;;; Code:

(use-package hl-todo
  :hook (prog-mode . hl-todo-mode)
  :config
  (setq hl-todo-highlight-punctuation ":"
        hl-todo-keyword-faces
        `(("TODO"              warning bold)
          ("FIXME"             error bold)
          ("HACK"              font-lock-constant-face bold)
          ("REVIEW"            font-lock-keyword-face bold)
          ("NOTE"              success bold)
          ("AUTHOR"            success bold)
          ("DESC"              success bold)
          ("DATE_CREATED"      success bold)
          ("FUCK-ME"           error bold)
          ("DEPRECATED" font-lock-doc-face bold))))

;;; nemacs-hl-todo.el ends here
