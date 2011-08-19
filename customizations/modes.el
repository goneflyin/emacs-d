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

;; .zsh and .zsh-theme files from oh-my-zsh should appear in shell-script-mode
(add-to-list 'auto-mode-alist '("\\.zsh$" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.zsh-theme$" . shell-script-mode))

;; Additional file types for ruby mode: Rakefile, .rake, .ru
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.erb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.thor$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))

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

;; coffee-mode
(defun coffee-custom ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
	  '(lambda() (coffee-custom)))
