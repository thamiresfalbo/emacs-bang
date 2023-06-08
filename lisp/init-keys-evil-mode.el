;;; init-key-evil-mode -- Summary
;;; Commentary:
;;; Code:
(use-package evil
  :blackout
    :init
    (setq evil-want-C-u-scroll t
	evil-want-C-d-scroll t
	evil-default-state 'insert
	evil-want-keybinding nil)
    :config
    (evil-mode 1))

(use-package evil-surround
  :after evil
  :config
  (global-evil-surround-mode 1))

(use-package evil-commentary
  :blackout
  :config
  (evil-commentary-mode))

(use-package evil-collection
  :blackout
  :after evil
  :config
  (evil-collection-init))
(blackout 'evil-collection-unimpaired-mode)

(use-package which-key
  :blackout
  :config
  (setq which-key-idle-delay 0.1)
  :init
  (which-key-mode))

(require 'init-keys)

(provide 'init-keys-evil-mode)
;;; init-key-evil-mode.el ends here
