;;; init-centaur-tabs.el -- Summary
;;; Commentary:
;;; Code:
(use-package centaur-tabs
  :config
  (setq centaur-tabs-style "zigzag"
	centaur-tabs-set-icons t
	centaur-tabs-set-bar 'left
        centaur-tabs-gray-out-icons t
	centaur-tabs-height 32
	)
  (centaur-tabs-headline-match)
  (centaur-tabs-mode t)
  (centaur-tabs-group-by-projectile-project)
  :hook
  (term-mode . centaur-tabs-local-mode)
  (writeroom-mode . centaur-tabs-local-mode)
  (dired-mode . centaur-tabs-local-mode)
  (dashboard-mode . centaur-tabs-local-mode)
  (writeroom-mode . centaur-tabs-local-mode)
  (dirvish-mode . centaur-tabs-local-mode)
  )

(provide 'init-centaur-tabs)
;;; init-centaur-tabs.el ends here
