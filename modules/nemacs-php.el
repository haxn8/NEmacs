;;; nemacs-php.el

;;; Commentary:

;;; Code:

(use-package php-mode
  :ensure t
  :mode ("\\.php\\'" . php-mode)
  :defer t)

(add-hook 'php-mode-hook 'nemacs/my-php-mode-hook)

(defun nemacs/my-php-mode-hook ()
  "My PHP mode configuration."
  (setq indent-tabs-mode nil
        tab-width 4
        c-basic-offset 4))

(use-package phpunit
  :ensure t
  :defer t)

;;; nemacs-php.el ends here
