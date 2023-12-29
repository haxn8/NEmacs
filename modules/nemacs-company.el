;;; nemacs-company.el

;;; Commentary:

;;; Code:

(use-package company
  :ensure t
  :defer t
  :config
  (company-keymap--unbind-quick-access company-active-map)
  (company-tng-configure-default)
  (setq company-idle-delay 0.1
        company-minimum-prefix-length 1))

(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'org-mode-hook 'company-mode)

(use-package company-anaconda 
  :ensure t
  :defer t
  :after company
  :config (add-to-list 'company-backends 'company-anaconda))

(use-package company-php
  :ensure t
  :defer t
  :after company)

;;; nemacs-company.el ends here
