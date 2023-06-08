;;; -*- lexical-binding: t; -*-
;;; init-dashboard.el --- Provides the Dashboard.
;;; Commentary:
;;; Code:
(use-package dashboard
  :config
  (setq dashboard-set-heading-icons t
	dashboard-set-navigator t
	dashboard-set-file-icons t
	dashboard-set-footer nil
	dashboard-center-content t
	dashboard-projects-backend 'projectile
	dashboard-set-init-info t
	dashboard-startup-banner '2)
  (setq dashboard-items '((recents . 5)
			  (bookmarks . 5)
			  (projects . 10)
			  (agenda . 5)))
  (dashboard-setup-startup-hook))

(provide 'init-dashboard)
;;; init-dashboard.el ends here
