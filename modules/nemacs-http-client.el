;;; nemacs-http-client.el

;;; Commentary:
;; I'm still keeping restclient, but there are times
;; where I will have to interact with .http files and
;; restclient obviously does not support them because
;; it has a different file format.

;;; Code:

(use-package http
  :ensure t
  :defer t
  :mode ("\\.http\\'" . http-mode))

;;; nemacs-http-client.el ends here
