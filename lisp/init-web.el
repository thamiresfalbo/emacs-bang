;;; init-web.el --- Web Support
;;; Commentary:
;;; https://web-mode.org/
;;; Code:
(use-package web-mode
  :config
  (add-to-list 'auto-mode-alist '("\\(?:\\.erb\\|.njk\\|.tmpl\\|.html?\\|rhtml\\|ejs\\|njk\\|mustache\\)\\'" . web-mode)))

(provide 'init-web)
;;; init-web.el ends here
