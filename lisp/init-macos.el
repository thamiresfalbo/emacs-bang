;;; init-macos.el --- Provides MacOS compatibility -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:
;; Needed for MacOS Compatibility.
(use-package exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; Source: http://xahlee.info/emacs/emacs/emacs_hyper_super_keys.html
;; set keys for Apple keyboard, for emacs in OS X
(setq mac-command-modifier 'meta) ; make cmd key do Meta
(setq mac-option-modifier 'super) ; make opt key do Super
(setq mac-control-modifier 'control) ; make Control key do Control
(setq ns-function-modifier 'hyper)  ; make Fn key do Hyper

(when (eq system-type 'darwin)
  (setq insert-directory-program "/opt/homebrew/bin/gls"))

(provide 'init-macos)
;;; init-macos.el ends here
