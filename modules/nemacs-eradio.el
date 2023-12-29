;;; nemacs-eradio.el

;;; Commentary:

;;; Code:

(use-package eradio
  :ensure t
  :defer t)

;; Radio Channels
(setq eradio-channels '(("def con - soma fm" . "https://somafm.com/defcon256.pls")          ;; electronica with defcon-speaker bumpers
                        ("metal - soma fm"   . "https://somafm.com/metal130.pls")           ;; \m/
                        ("cyberia - lainon"  . "https://lainon.life/radio/cyberia.ogg.m3u") ;; cyberpunk-esque electronica
                        ("cafe - lainon"     . "https://lainon.life/radio/cafe.ogg.m3u")))  ;; boring ambient, but with lain

(global-set-key (kbd "C-c z >") 'eradio-play)
(global-set-key (kbd "C-c z <") 'eradio-stop)
(global-set-key (kbd "C-c z -") 'eradio-toggle)

;;; nemacs-eradio.el ends here
