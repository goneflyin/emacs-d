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
