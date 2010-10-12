;; some modes need to call stuff on the exec-path
(push "/opt/local/bin" exec-path)
(push "/usr/local/bin" exec-path)

; enable Common Lisp support
(require 'cl)

;; setup timer to show config load time
(defvar *emacs-load-start* (current-time))

; add directories to the load path
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/customizations")
(add-to-list 'load-path "~/.emacs.d/utilities")
(add-to-list 'load-path "~/.emacs.d/vendor")

; handy function to load all elisp files in a directory
(load-file "~/.emacs.d/load-directory.el")

; load utility functions
(mapcar 'load-directory '("~/.emacs.d/utilities"))

; load third-party modes
; note: these are configured in customizations
(vendor 'color-theme)
(vendor 'scala-mode)

; load personal customizations (keybindings, colors, etc.)
(mapcar 'load-directory '("~/.emacs.d/customizations"))
(if (string-equal system-type "darwin")
    (progn (message "Loading customizations for mac...")
	   (mapcar 'load-directory '("~/.emacs.d/customizations-mac")))
    (message "No customizations for system-type: %s" system-type))

;; (mapcar 'load-directory '("~/.emacs.d/mac-customizations")
(message "My .emacs loaded in %ds" (destructuring-bind (hi lo ms) (current-time)
                             (- (+ hi lo) (+ (first *emacs-load-start*) (second
                             *emacs-load-start*)))))


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
