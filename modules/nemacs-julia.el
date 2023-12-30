;;; nemacs-julia.el

;;; Commentary:

;;; Code:

(use-package julia-mode
  :mode "\\.jl\\'"
  :init
  :ensure t
  :defer t)

(use-package julia-repl
  :ensure t
  :defer t
  :hook (julia-mode . julia-repl-mode)

  :init
  (setenv "JULIA_NUM_THREADS" "8")

  :config
  ;; Set the terminal backend
  (julia-repl-set-terminal-backend 'vterm)
  
  ;; Keybindings for quickly sending code to the REPL
  (define-key julia-repl-mode-map (kbd "<C-RET>") 'my/julia-repl-send-cell)
  (define-key julia-repl-mode-map (kbd "<M-RET>") 'julia-repl-send-line)
  (define-key julia-repl-mode-map (kbd "<S-return>") 'julia-repl-send-buffer)) 

;;; nemacs-julia.el ends here
