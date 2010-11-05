;;; ------------------------------------------------
;; save a list of open files in ~/.emacs.desktop
;; save the desktop file automatically if it already exists
(setq desktop-save 'if-exists)
(desktop-save-mode 1)

;; save a bunch of variables to the desktop file
;; for lists specify the len of the maximal saved data also
(setq desktop-globals-to-save
      (append '((extended-command-history . 30)
                (file-name-history        . 100)
                (grep-history             . 30)
                (compile-history          . 30)
                (minibuffer-history       . 50)
                (query-replace-history    . 60)
                (read-expression-history  . 60)
                (regexp-history           . 60)
                (regexp-search-ring       . 20)
                (search-ring              . 20)
                (shell-command-history    . 50)
                tags-file-name
                register-alist)))

;; allow us to look at whitespace
(require 'whitespace)
(require 'show-wspace)
;;(add-hook 'font-lock-mode-hook 'show-ws-highlight-tabs)


;; scala-mode
(require 'scala-mode-auto)
;; (require 'font-lock) ;; why did stevej have this here??
(require 'ensime)

;; org-mode
;; (require 'org-mode)

;; groovy-mode
(require 'groovy-mode)
(add-to-list 'auto-mode-alist '("\\.gradle$" . groovy-mode))
