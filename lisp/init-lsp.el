;;; init-lsp.el --- Provides support for Language Server Protocol -*- lexical-binding: t; -*-
;;; Commentary:
;;; Url:
;;; https://emacs-lsp.github.io/lsp-mode/
;;; Code:
(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook
  ((python-mode
    go-mode
    c-mode
    c++-mode
    enh-ruby-mode
    ruby-mode
    lua-mode
    swift-mode) . lsp-deferred)
  (lsp-mode . lsp-enable-which-key-integration)
  :commands lsp lsp-deferred)

;;Python
(use-package lsp-jedi
  :config
  (with-eval-after-load "lsp-mode"
    (add-to-list 'lsp-disabled-clients 'pyls)
    (add-to-list 'lsp-enabled-clients 'jedi)))

(add-hook 'enh-ruby-mode-hook 'lsp-solargraph )

(use-package lsp-ui :commands lsp-ui-mode)

(provide 'init-lsp)
;;; init-lsp.el ends here
