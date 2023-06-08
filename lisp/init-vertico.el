;;; init-vertico --- Minimal yet more powerful than Ido -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:
(use-package vertico
  :straight (:files (:defaults "extensions/*"))
  :custom
  (vertico-count 10)
  (vertico-cycle t)
  (vertico-resize t)
  :bind (:map vertico-map
              ("C-j" . vertico-next)
              ("C-k" . vertico-previous)
              ("C-f" . vertico-exit)
              :map minibuffer-local-map
              ("M-h" . backward-kill-word))
  :init
  (vertico-mouse-mode)
  (vertico-mode))

(global-unset-key (kbd "C-x C-b"))

(use-package vertico-directory
  :straight nil
  :load-path "straight/repos/vertico/extensions"
  :after vertico
  :ensure nil
  :bind (:map vertico-map
              ("RET" . vertico-directory-enter)
	      ("DEL" . vertico-directory-delete-char)
              ("M-DEL" . vertico-directory-delete-word)))

(provide 'init-vertico)
;;; init-vertico.el ends here
