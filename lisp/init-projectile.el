;;; init-projectile.el --- Projectile Support -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:
(use-package projectile
  :blackout
  :config
  (setq projectile-sort-order 'modification-time)
  (setq projectile-project-search-path '("~/Repositórios/" . 4))
  :init
  (projectile-mode +1))

(use-package rg
  :ensure-system-package
  (rg . ripgrep))

(use-package ag
  :ensure-system-package
  (ag . the_silver_searcher))

(provide 'init-projectile)
;;; init-projectile.el ends here
