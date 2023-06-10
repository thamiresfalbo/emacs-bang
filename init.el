;;; init.el --- Startup file -*- lexical-binding: t; -*-
;;; Commentary:
;;; My Emacs configuration, one explosion at time!
;;;
;;; ██████╗  █████╗ ███╗   ██╗ ██████╗ ██╗
;;; ██╔══██╗██╔══██╗████╗  ██║██╔════╝ ██║
;;; ██████╔╝███████║██╔██╗ ██║██║  ███╗██║
;;; ██╔══██╗██╔══██║██║╚██╗██║██║   ██║╚═╝
;;; ██████╔╝██║  ██║██║ ╚████║╚██████╔╝██╗
;;; ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝
;;;
;;; Url: https://github.com/thamiresfalbo/emacs-bang
;;; Code:
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Configure use-package to use straight.el by default
(straight-use-package 'use-package)
(use-package straight
  :custom (straight-use-package-by-default t))

(use-package use-package-ensure-system-package
  :ensure t)

;;; CONFIGS BEGIN HERE
(use-package benchmark-init
  :ensure t
  :config
  (add-hook 'after-init-hook 'benchmark-init/deactivate))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-system) ;; Needed for MacOS compatibility.
(set-language-environment "UTF-8")

(use-package blackout
  :config
  (blackout 'meow-mode)
  (blackout 'auto-revert-mode)
  (blackout 'eldoc-mode))

(use-package shackle
  :ensure t)

;; KEYBINDINGS
(require 'init-keys-meow)

;;; PROGRAMMING
(require 'init-writing)
(require 'init-programming)

;;; MINIBUFFER
(require 'init-vertico)
(require 'init-dirvish)
(require 'init-consult)
(require 'init-orderless)


;;; CUSTOMIZATIONS
(setq inhibit-startup-screen 1
      visible-bell nil
      initial-buffer-choice  nil)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq-default message-log-max nil)
(kill-buffer "*Messages*")
(display-fill-column-indicator-mode)

;;; APPEARANCE
(use-package solaire-mode :config (solaire-global-mode +1))
(set-face-attribute 'default nil :family "Menlo" :height 140 :weight 'regular :width 'expanded)
(set-face-attribute 'fixed-pitch nil :family "Menlo")
(set-face-attribute 'variable-pitch nil :family "Menlo")
(use-package all-the-icons
  :ensure t)

;;; THEMES
(require 'init-ef)
(require 'init-modus)

(use-package doom-themes
  :ensure t)

(load-theme 'doom-spacegrey :noconfirm)

;;; Ace Window
(use-package ace-window
  :config
  (setq aw-dispatch-always t))

;;; OTHER
(use-package restart-emacs)
(require 'init-dashboard)
(require 'init-centaur-tabs)
(toggle-frame-maximized)
(message "BANG! has finished loading.")

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
