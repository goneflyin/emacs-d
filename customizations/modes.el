;; allow us to look at whitespace
(require 'whitespace)
(require 'show-wspace)
;;(add-hook 'font-lock-mode-hook 'show-ws-highlight-tabs)


;; scala-mode
(require 'scala-mode-auto)
;; (require 'font-lock) ;; why did stevej have this here??
(require 'ensime)

;; org-mode
;; (require 'org-mode) ;; handled by (vendor 'org) in init.el
(add-to-list 'load-path "~/.emacs.d/vendor/org")
(require 'org-install)
(setq org-directory "~/.org")
(setq org-mobile-directory "~/Dropbox/MobileOrg")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq org-startup-indented t)
(define-key global-map "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)

;; groovy-mode
(require 'groovy-mode)
(add-to-list 'auto-mode-alist '("\\.gradle$" . groovy-mode))
