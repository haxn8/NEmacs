;;; nemacs-font.el

;;; Code:

(defun nemacs/font-exists-p (font)
  "Check if FONT exists."
  (member font (font-family-list)))

(defun nemacs/set-font-and-line-spacing ()
  "Set font and line spacing based on availability."
  (let ((desired-font "Comic Mono")
        (default-font (cond ((eq system-type 'darwin) "Menlo")
                            ((eq system-type 'gnu/linux) "Monospace")
                            ((eq system-type 'windows-nt) "Consolas"))))
    
    ;; Check if desired font exists
    (if (nemacs/font-exists-p desired-font)
        (progn
          (set-face-attribute 'default nil :font desired-font :height 150 :weight 'regular)
          (setq-default line-spacing 0.12))
      ;; Use default font if desired font does not exist
      (progn
        (set-face-attribute 'default nil :font default-font :height 140 :weight 'regular)
        (setq-default line-spacing 0.1)))))

(nemacs/set-font-and-line-spacing)
;;; nemacs-font.el ends here
