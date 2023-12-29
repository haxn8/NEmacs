;;; nemacs-custom.el

;;; Commentary:
;;; Just my custom shit. I'm not sure where else to place them.
;;; Or shit I copied online.

;;; Code:

;; Change backup file location
(setq backup-directory-alist `(("." . ,(concat (getenv "EMACS_BACKUP_DIR") "/code")))
      backup-by-copying t                 ; Don't delink hardlinks
      version-control t                   ; Use version numbers on backups
      delete-old-versions t               ; Automatically delete excess backups
      kept-new-versions 20                ; how many of the newest versions to keep
      kept-old-versions 5)                ; and how many of the old
(setq make-backup-files nil)

;; Open file in the last edited position by default
(save-place-mode 1)

;; split window horizontally
(setq split-width-threshold 1)

 ;; highlight matching pair
(show-paren-mode 1)

;; Better scrolling
(setq pixel-scroll-precision-large-scroll-height 60.0)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 1)

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

(defun nemacs/reverse-words (beg end)
  "Reverse the order of words in region."
  (interactive "*r")
  (apply
   'insert
   (reverse
    (split-string
     (delete-and-extract-region beg end) "\\b"))))

(global-set-key (kbd "s-\\") 'nemacs/reverse-words)

(defun nemacs/increment-number-at-point ()
  "Increments the number at point.
I copied it from https://www.emacswiki.org/emacs/IncrementNumber"
  (interactive)
  (skip-chars-backward "0-9")
  (or (looking-at "[0-9]+")
      (error "No number at point"))
  (replace-match (number-to-string (1+ (string-to-number (match-string 0))))))

(global-set-key (kbd "C-c s-1") 'nemacs/increment-number-at-point)

;;; nemacs-custom.el ends here
