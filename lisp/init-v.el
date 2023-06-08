;;; init-v --- Very strange language, looks cool
;;; Commentary:
;;; Code:
(use-package v-mode
  :straight (v-mode
             :type git
             :host github
             :repo "damon-kwok/v-mode"
             :files ("tokens" "v-mode.el"))
  :config
  ;; :bind-keymap
  ;; ("M-z" . v-menu)
  ;; ("<f6>" . v-menu)
  ;; ("C-c C-f" . v-format-buffer)
  :mode ("\\(\\.v?v\\|\\.vsh\\)$" . 'v-mode))

(provide 'init-v)
;;; init-v.el ends here
