;;; init-consult.el --- Summary  -*- lexical-binding: t; -*-
;;; Commentary:
;;; Url: https://github.com/minad/consult
;;; Code:
(use-package consult
  :bind
  ([remap switch-to-buffer] . consult-buffer)
  ([remap yank-from-kill-ring] . consult-yank-from-kill-ring)
  ([remap yank-pop] . consult-yank-pop)
 ;; Projectile Enhancements
  (:map projectile-command-map
	("s r" . consult-ripgrep)
	("s g" . consult-grep)
	("s s" . consult-ag)
	("p" . consult-projectile)))

(use-package ctrlf
  :ensure t
  :config
  (ctrlf-mode))

(use-package consult-ag)
(use-package consult-flycheck)
(use-package consult-projectile
  :after (consult projectile)
  :straight (consult-projectile :type git :host gitlab :repo "OlMon/consult-projectile" :branch "master"))

(use-package marginalia :init (marginalia-mode))
(use-package savehist :init (savehist-mode))

(provide 'init-consult)
;;; init-consult.el ends here
