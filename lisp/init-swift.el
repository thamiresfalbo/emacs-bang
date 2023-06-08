;;; init-swift.el --- Summary
;;; Commentary:
;;; Code:
(use-package swift-mode)
(use-package company-sourcekit)
(use-package flycheck-swift
  :ensure t
  :after flycheck)

(provide 'init-swift)
;;; init-swift.el ends here
