;;; init-lisp.el -- Summary:
;;; Commentary:
;;; Code:

(use-package paredit
  :hook (lisp-mode elisp-mode emacs-lisp-mode))

(use-package slime-company
  :after (slime company)
  :config (setq slime-company-completion 'fuzzy
                slime-company-after-completion 'slime-company-just-one-space))

(use-package slime
  :init
  (slime-setup '(slime-quicklisp slime-company slime-fancy))
  (setq inferior-lisp-program "sbcl"))


(provide 'init-lisp)
;;; init-lisp.el ends here


