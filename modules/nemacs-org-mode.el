;;; nemacs-org-mode.el

;;; Commentary:

;;; Code:

(require 'org)

(use-package org 
  :ensure nil
  :custom (org-modules '(org-habit)))
(require 'org-habit)

(setq org-cycle-separator-lines 0)

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(setq org-log-done t)

(setq org-agenda-files
      (list
       (concat home-dir "/org/routine.org")
       (concat home-dir "/org/work.org")
       (concat home-dir "/org/birthdays.org")
       (concat home-dir "/org/billings.org")))

;; NOTE: To set agenda files properly, open the .org file and then C-[
(setq org-habit-show-all-today t)

(add-hook 'org-mode-hook 'turn-on-flyspell)

;; Start: TODO Keywords
;;; https://hugocisneros.com/org-config/
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)"))))

;; This is so I cannot set a headline to DONE if children aren’t DONE.
(setq-default org-enforce-todo-dependencies t)

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "blue" :weight bold)
              ("NOTE" :foreground "green" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold)
              ("MEETING" :foreground "forest green" :weight bold)
              ("PHONE" :foreground "forest green" :weight bold))))
;; I don't wan't the keywords in my exports by default
(setq-default org-export-with-todo-keywords nil)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((plantuml . t)
   (shell . t)
   (emacs-lisp . t)
   (latex . t)
   (ditaa . t)
   (js . t)
   (python . t)
   ))

(setq org-html-html5-fancy t
      org-html-doctype "html5")

(use-package org-superstar  ;; Improved version of org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-superstar-mode 1))))

(setq org-startup-indented t)           ;; Indent according to section
(setq org-startup-with-inline-images t) ;; Display images in-buffer by default
(setq org-superstar-headline-bullets-list '(?⁖))

(use-package org-appear
  :commands (org-appear-mode)
  :hook (org-mode . org-appear-mode)
  :init
  (setq org-hide-emphasis-markers t) ;; A default setting that needs to be t for org-appear

  (setq org-appear-autoemphasis t) ;; Enable org-appear on emphasis (bold, italics, etc)
  (setq org-appear-autolinks nil)  ;; Don't enable on links
  (setq org-appear-autosubmarkers t)) ;; Enable on subscript and superscript

(require 'ob-js)

(add-to-list 'org-babel-load-languages '(js . t))
(org-babel-do-load-languages 'org-babel-load-languages org-babel-load-languages)
(add-to-list 'org-babel-tangle-lang-exts '("js" . "js"))

(use-package ob-restclient
  :after org
  :ensure t
  :config
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((restclient . t))))

(use-package feature-mode)

;; Define the path to your PlantUML JAR file using an environment variable
(defvar plantuml-jar-path (concat home-dir "/plantuml.jar"))

(use-package plantuml-mode
  :init
  (setq plantuml-default-exec-mode 'jar)
  (setq plantuml-jar-path plantuml-jar-path)
  (setq org-plantuml-jar-path plantuml-jar-path)
  (setq org-startup-with-inline-images t)
  (add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
  (org-babel-do-load-languages 'org-babel-load-languages '((plantuml . t))))

;;; nemacs-org-mode.el ends here
