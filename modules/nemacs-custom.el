;;; nemacs-custom.el

;;; Commentary:
;;; Just my custom shit. I'm not sure where else to place them.
;;; Or shit I copied online.

;;; Code:

(defun nemacs/move-text-internal (arg)
  (cond
   ((and mark-active transient-mark-mode)
    (if (> (point) (mark))
        (exchange-point-and-mark))
    (let ((column (current-column))
          (text (delete-and-extract-region (point) (mark))))
      (forward-line arg)
      (move-to-column column t)
      (set-mark (point))
      (insert text)
      (exchange-point-and-mark)
      (setq deactivate-mark nil)))
   (t
    (let ((column (current-column)))
      (beginning-of-line)
      (when (or (> arg 0) (not (bobp)))
        (forward-line)
        (when (or (< arg 0) (not (eobp)))
          (transpose-lines arg))
        (forward-line -1))
      (move-to-column column t)))))

(defun nemacs/move-text-down (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines down."
  (interactive "*p")
  (nemacs/move-text-internal arg))

(defun nemacs/move-text-up (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines up."
  (interactive "*p")
  (nemacs/move-text-internal (- arg)))

(global-set-key [M-up] 'nemacs/move-text-up)
(global-set-key [M-down] 'nemacs/move-text-down)

(provide 'move-text)

(defun nemacs/config-visit ()
  (interactive)
  (find-file (concat config-dir "README.org")))

(defun nemacs/config-reload ()
  (interactive)
  (load-file (concat config-dir "init.el")))

(global-set-key (kbd "C-c r") 'nemacs/config-reload)
(global-set-key (kbd "C-c e") 'nemacs/config-visit)

(defun nemacs/toggle-maximize-buffer ()
  "Maximize buffer / Pane focus."
  (interactive)
  (if (= 1 (length (window-list)))
      (jump-to-register '_)
    (progn
      (window-configuration-to-register '_)
      (delete-other-windows))))

(global-set-key (kbd "C-c f") 'nemacs/toggle-maximize-buffer)

(defun nemacs/command-of-the-day ()
  "Show the documentation for a random command.
Copied from https://github.com/oantolin/emacs-config"
  (interactive)
  (let ((commands))
    (mapatoms (lambda (s)
                (when (commandp s) (push s commands))))
    (describe-function
     (nth (random (length commands)) commands))))

;;; nemacs-custom.el ends here
