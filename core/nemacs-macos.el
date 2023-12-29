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

;; Get Emacs to move files to trash instead of "rm-ing" them
;; Source: https://xenodium.com/rm-important-txt-oh-sht/
;; NOTE: You must first `brew install trash` for this to work.
(if (eq system-type 'darwin)
    (progn
      (setq delete-by-moving-to-trash t)
      (setq trash-directory (concat (getenv "EMACS_TRASH_DIR")))

      ;; Define `system-move-file-to-trash` to use "trash" for moving files to trash
      (defun system-move-file-to-trash (file)
        "Use \"trash\" to move FILE to the system trash."
        (cl-assert (executable-find "trash") nil "'trash' must be installed. Needs \"brew install trash\"")
        (call-process "trash" nil 0 nil "-F" file))))

;;; nemacs-macos.el ends here
