;;; nemacs-eglot.el

;;; Commentary:
;;; For all the lsp stuff.

;;; Code:

(use-package eglot
  :ensure t
  :config
  ;; Set up eglot for various modes
  (setq eglot-server-programs
	`((c-mode . ("clangd"))
          (c++-mode . ("clangd"))
          (js-mode . ("typescript-language-server" "--stdio" ,(concat "--tsserver-path=" ts-server-path)))
          (php-mode . ("intelephense" "--stdio"))
          (python-mode . ("pylsp"))))  ;; Use pylsp for Python mode

  ;; Automatically start eglot for C/C++ files
  (add-hook 'c-mode-hook 'eglot-ensure)
  (add-hook 'c++-mode-hook 'eglot-ensure)

  ;; Automatically start eglot for JavaScript files
  (add-hook 'js-mode-hook 'eglot-ensure)

  ;; Automatically start eglot for PHP files
  (add-hook 'php-mode-hook 'eglot-ensure)

  ;; Automatically start eglot for Python files
  (add-hook 'python-mode-hook 'eglot-ensure))

;;; nemacs-eglot.el ends here
