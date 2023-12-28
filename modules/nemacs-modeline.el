;;; nemacs-modeline.el --- My modeline configurations

;;; Code:

(display-battery-mode 1)

(display-time-mode 1)

;; So that comp mode does not take 50% of my screen space 
;; Source: https://christiantietze.de/posts/2019/10/php-emacs-setup/
(setq compilation-window-height 10)

(defun nemacs/ct/compilation-hook ()
  (when (not (get-buffer-window "*compilation*"))
    (save-selected-window
      (save-excursion
        (let* ((w (split-window-vertically))
               (h (window-height w)))
          (select-window w)
          (switch-to-buffer "*compilation*")
          (shrink-window (- h compilation-window-height)))))))
(add-hook 'compilation-mode-hook 'nemacs/ct/compilation-hook)

;;; nemacs-modeline.el ends here
