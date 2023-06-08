;;; init-latex.el -- Summary
;;; Commentary:
;;; Code:

(use-package auctex
  :defer t
  :config
  :hook
  (LaTeX-mode . TeX-fold-mode)
  :init
  (company-auctex-init))

(use-package pdf-tools
  :ensure t)


(use-package company-auctex
  :init
  (company-auctex-init))

(use-package latex-preview-pane
  ;; :config
  ;; (setq latex-preview-pane-use-frame t
  ;; 	preview-orientation 'right)
  ;; (seq shackle-rules )
  :init
  (latex-preview-pane-enable))

(provide 'init-latex)
;;; init-latex.el ends here
