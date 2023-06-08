;;; init-keys -- Summary
;;; Commentary:
;;; Code:
(use-package general
  :config
  (defconst my-leader "SPC")
  (general-create-definer my-leader-def
    :prefix my-leader)
  (my-leader-def
    :keymaps 'normal
    "p" '(:keymap projectile-command-map :package projectile)
    "a" 'org-agenda
    "c" 'org-capture
    "w" 'ace-window
    "g" 'magit-status
    "rr" 'restart-emacs
    ;; Ported Emacs commands
    "xb" 'switch-to-buffer
    "xs" 'save-buffer
    "xf" 'find-file
    "xc" 'save-buffers-kill-terminal
    "SPC"  'execute-extended-command
    )
  (general-define-key
   :keymaps 'insert
   "<S-return>"  "C-e C-m"))

(provide 'init-keys)
;;; init-keys.el ends here
