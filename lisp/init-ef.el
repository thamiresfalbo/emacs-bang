;;; init-ef.el --- Summary:
;;; Commentary:
;;; Code:
(use-package ef-themes
  :bind
  ("<f5>" . ef-themes-toggle)
  :config
  (setq ef-themes-to-toggle '(ef-summer ef-cherie))
  (setq ef-themes-mixed-fonts t))

(provide 'init-ef)
;;; init-ef.el ends here
