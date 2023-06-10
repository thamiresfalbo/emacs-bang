;;; init-elixir
;;; Commentary:
;;; Code:
(use-package elixir-mode)

(use-package exunit
  :hook (elixir-mode . exunit-mode))

(provide 'init-elixir)
;;; init-elixir.el ends here
