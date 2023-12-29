;;; nemacs-bootstrap.el --- The file to glue shit together

;;; Commentary:

;; This file is used to load all the other files that are required
;; for my Emacs configuration to work.

;;; Code:

(defvar home-dir (getenv "HOME_DIR"))
(defvar config-dir (getenv "EMACS_CONFIG_PATH"))

(load-file (concat config-dir "/core/nemacs-use-package.el"))
(load-file (concat config-dir "/core/nemacs-macos.el"))

(load-file (concat config-dir "/modules/nemacs-startup.el"))
(load-file (concat config-dir "/modules/nemacs-ui.el"))
(load-file (concat config-dir "/modules/nemacs-org-mode.el"))
(load-file (concat config-dir "/modules/nemacs-markdown.el"))
(load-file (concat config-dir "/modules/nemacs-format-all.el"))
(load-file (concat config-dir "/modules/nemacs-hl-todo.el"))
(load-file (concat config-dir "/modules/nemacs-editor-config.el"))
(load-file (concat config-dir "/modules/nemacs-php.el"))
(load-file (concat config-dir "/modules/nemacs-web-mode.el"))
(load-file (concat config-dir "/modules/nemacs-vagrant.el"))
(load-file (concat config-dir "/modules/nemacs-rust-mode.el"))
(load-file (concat config-dir "/modules/nemacs-vterm.el"))
(load-file (concat config-dir "/modules/nemacs-eradio.el"))
(load-file (concat config-dir "/modules/nemacs-speedtype.el"))
(load-file (concat config-dir "/modules/nemacs-csv-mode.el"))
(load-file (concat config-dir "/modules/nemacs-pdf-tools.el"))
(load-file (concat config-dir "/modules/nemacs-mw-thesaurus.el"))
(load-file (concat config-dir "/modules/nemacs-restclient.el"))

;;; nemacs-bootstrap.el ends here
