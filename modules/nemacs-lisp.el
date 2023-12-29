;;; nemacs-lisp.el

;;; Commentary:
;;; Everything needed for lisp development.

;;; Code:

(electric-pair-mode 1)

(use-package paredit
  :ensure t
  :defer t)

;; Emacs Lisp
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)

(use-package clojure-mode
  :ensure t
  :defer t)

(use-package cider
  :ensure t
  :defer t)

;; Cider
(add-hook 'cider-mode-hook (lambda () (show-paren-mode 1)))
(add-hook 'cider-mode-hook #'eldoc-mode)
(add-hook 'cider-mode-hook #'paredit-mode)
(add-hook 'cider-mode-hook #'imenu-add-menubar-index)
(setq cider-font-lock-dynamically nil)
(setq cider-repl-use-pretty-printing t)

;; clojurescript mode
(add-hook 'clojurescript-mode #'paredit-mode)
(add-hook 'clojurescript-mode #'paredit-mode)

;; Paredit
(add-hook 'cider-repl-mode-hook #'paredit-mode)
(add-hook 'cider-mode-hook #'paredit-mode)
(add-hook 'clojure-mode-hook #'paredit-mode)

(use-package eros
  :ensure t
  :defer t
  :commands
  (eros-eval-region eros-eval-last-sexp)
  :hook
  (emacs-lisp-mode org-mode lisp-interaction-mode)
  :preface
  (defun eros-eval-region (start end)
    (interactive "r")
    (eros--eval-overlay
     (string-trim
      (with-output-to-string
        (eval-region start end standard-output)))
     (max (point) (mark)))))

(eros-mode 1)

;;; nemacs-lisp.el ends here
