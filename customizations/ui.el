; theme
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)
(load-file "~/.emacs.d/vendor/twilight-emacs/color-theme-twilight.el")
(color-theme-twilight)

; disable tool-bar across the top that displays by default
(tool-bar-mode -1)

;;
;; default font --- DOESN'T WORK!
;;
;;   -- does this work on mac? if not, move to customizations-win
;;   -- use menu Options-->Save Options to save current font (and other stuff) to .emacs file; can tweak after saving
;;
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "#F8F8F8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 83 :width normal :foundry "outline" :family "Consolas")))))


