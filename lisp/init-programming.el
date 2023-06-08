;;; init-programming.el --- -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
;; (add-hook 'prog-mode-hook 'flymake-mode)
(add-hook 'term-mode-hook 'compilation-shell-minor-mode)

(use-package yaml-mode)
(use-package magit)

;;(quelpa siege-mode
;;  :quelpa (siege-mode :repo "tslilc/siege-mode" :fetcher github))

(use-package flycheck
  :init (global-flycheck-mode))

(use-package yasnippet
  :config
  (blackout 'yas-minor-mode)
  (setq yas-prompt-functions 'yas-x-prompt)
  (setq yas-snippet-dirs '("~/.config/emacs/snippets"))
  (yas-global-mode))

(use-package yasnippet-snippets
  :after yasnippet)

(use-package company
  :blackout
  :config
  (setq company-idle-delay 0)
  (global-company-mode))

(use-package company-c-headers)
(use-package company-auctex)

;;(use-package company-box
  ;;:blackout
  ;;:config
  ;;:hook (company-mode))

;; Fixes
(advice-add 'company-complete-common :before (lambda () (setq my-company-point (point))))
(advice-add 'company-complete-common :after (lambda ()
 		  			      (when (equal my-company-point (point))
 			  			(yas-expand))))

;; Formatting because i'm not paid for it
(use-package format-all
  :blackout
  :hook (prog-mode))

(use-package rainbow-delimiters :config (rainbow-delimiters-mode))

;; Indenting
(use-package highlight-indent-guides
  :blackout
  :init
  (setq highlight-indent-guides-method 'bitmap))

;; Bugged as of 8 Oct 2022 due to this:
;; https://github.com/Malabarba/aggressive-indent-mode/issues/158
;; (use-package aggressive-indent
;;   :hook (prog-mode))

(electric-pair-mode 1)
;; Docker(will separate this later)
;; (use-package dockerfile-mode)
;; (use-package docker)

(use-package diff-hl
  :config
  (add-hook 'magit-pre-refresh-hook 'diff-hl-magit-pre-refresh)
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
  :init
  (global-diff-hl-mode))

(defvar company-mode/enable-yas t
  "Enable yasnippet for all backends.")

(defun company-mode/backend-with-yas (backend)
  (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
     backend
    (append (if (consp backend) backend (list backend))
           '(:with company-yasnippet))))

(setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))


;;; PROGRAMMING
(require 'init-projectile)
(require 'init-latex)
(require 'init-web)
(require 'init-eglot)
;; (require 'init-lsp)
(require 'init-swift)
(require 'init-lua)
(require 'init-ruby)
(require 'init-v)
(require 'init-lisp)
(use-package lispy)

(provide 'init-programming)
;;; init-programming.el ends here
