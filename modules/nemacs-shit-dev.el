;;; nemacs-shit-dev.el

;;; Commentary:
;;; Everything needed for front-end and back-end web development.
;;; Covers HTML, CSS and JS. I unfortunately have to work on
;;; front-end shit at times. Its sad when you don't always get to write C.
;;; I added some stuff here like skewer for Aizzat and Fazrul. I think they'd
;;; love it.

;;; Code:

(use-package js2-mode
  :ensure t
  :defer t)

(add-hook 'javascript-mode 'js2-mode)

(use-package typescript-mode
  :ensure t
  :defer t)

;; Why skewer?
;; Watch this: https://www.youtube.com/watch?v=4tyTgyzUJqM
;; Its actually pretty neat!
(use-package skewer-mode
  :ensure t
  :defer t)

(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)

(use-package web-mode
  :ensure t
  :defer t)

;; Become default for editing templates used by Zend or Symphony2
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\.twig\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(add-hook 'web-mode-before-auto-complete-hooks 'company-mode-hook)

(defun nemacs/my-setup-php ()
  ;; enable web mode
  (web-mode)

  ;; make these variables local
  (make-local-variable 'web-mode-code-indent-offset)
  (make-local-variable 'web-mode-markup-indent-offset)
  (make-local-variable 'web-mode-css-indent-offset)

  ;; set indentation, can set different indentation level for different code type
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-markup-indent-offset 2))

(add-to-list 'auto-mode-alist '("\\.phtml$" . nemacs/my-setup-php))

(use-package emmet-mode
  :ensure t
  :defer t)

(add-hook 'web-mode-hook 'emmet-mode)

(use-package css-mode
  :ensure t
  :defer t
  :config (setq css-indent-offset 4))

;;; nemacs-shit-dev.el ends here
