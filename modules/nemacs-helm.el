;;; nemacs-helm.el

;;; Commentary:

;;; Code:

(use-package helm
  :init
  (setq helm-split-window-in-side-p t
        helm-move-to-line-cycle-in-source t)
  :config
  (helm-mode 1) ;; Most of Emacs prompts become helm-enabled
  (helm-autoresize-mode 1) ;; Helm resizes according to the number of candidates
  (global-set-key (kbd "C-x b") 'helm-buffers-list) ;; List buffers ( Emacs way )
  (global-set-key (kbd "C-x r b") 'helm-bookmarks) ;; Bookmarks menu
  (global-set-key (kbd "C-x C-f") 'helm-find-files) ;; Finding files with Helm
  (global-set-key (kbd "M-c") 'helm-calcul-expression) ;; Use Helm for calculations
  (global-set-key (kbd "C-s") 'helm-occur)  ;; Replaces the default isearch keybinding
  (global-set-key (kbd "C-x C-a") 'helm-apropos)  ;; Helmized apropos interface
  (global-set-key (kbd "M-x") 'helm-M-x)  ;; Improved M-x menu
  (global-set-key (kbd "M-y") 'helm-show-kill-ring)  ;; Show kill ring, pick something to paste
  )

;; Load themes in Helm
(use-package helm-themes
  :ensure t
  :defer t)

(global-set-key (kbd "M-+") 'helm-themes)

;;; nemacs-helm.el ends here
