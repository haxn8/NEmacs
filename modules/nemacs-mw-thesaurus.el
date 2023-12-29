;;; nemacs-mw-thesaurus.el

;;; Commentary:

;;; Code:

(use-package mw-thesaurus
  :ensure t
  :defer t)

(global-set-key (kbd "M-*") 'mw-thesaurus-lookup)

;;; nemacs-mw-thesaurus.el ends here
