;;; nemacs-macos.el --- All darwin coding system based configurations go here.

;;; Commentary:

;; This file is used to handle all system based configurations.
;; Things like MacOS meta key, etc.

;;; Code:

;; On MacOS, darwin will be the system-type returned.
;; I'm not certain why the Emacs authors decided on OPT as Meta instead
;; of CMD. It's something that makes me want to fucking puke.
(if (eq system-type 'darwin)
    (progn
      (setq mac-option-modifier 'super)
      (setq ns-function-modifier 'hyper)
      (setq mac-command-modifier 'meta)
      (setq mac-option-key-is-meta nil)
      (setq mac-command-key-is-meta t)))

;;; nemacs-macos.el ends here
