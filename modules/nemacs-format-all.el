;;; nemacs-format-all.el

;;; Commentary:

;;; Code:

(use-package format-all
  :preface
  (defun ian/format-code ()
    "Auto-format whole buffer."
    (interactive)
    (if (derived-mode-p 'prolog-mode)
        (prolog-indent-buffer)
      (format-all-buffer)))

  ;; Ensure format-all is used for programming modes
  (add-hook 'prog-mode-hook #'format-all-ensure-formatter)

  ;; Optional: Set default formatter for C/C++ modes to clang-format
  (defun set-clang-format ()
    (when (or (derived-mode-p 'c-mode) (derived-mode-p 'c++-mode))
      (setq format-all-formatters '(("C/C++" clang-format)))))

  ;; Add hook to set clang-format for C/C++ modes
  (add-hook 'prog-mode-hook 'set-clang-format))

(global-set-key (kbd "M-p") 'ian/format-code)

;;; nemacs-format-all.el ends here
