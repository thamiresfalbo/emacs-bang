;;; init-eglot.el --- Provides support for Language Server Protocol -*- lexical-binding: t; -*-
;;; Commentary:
;;; Url:
;;; https://github.com/joaotavora/eglot
;;; Code:
(use-package eglot
  :config
  ;;This configuration can change on different systems.
  ;;Please see https://github.com/apple/sourcekit-lsp for a better explanation.
  ;; (add-to-list 'eglot-server-programs '((swift-mode) . ("/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/sourcekit-lsp")))
  ;; (add-to-list 'eglot-server-programs '((enh-ruby-mode) . ("solargraph" "socket" "--port" :autoport)))
  ;; (add-to-list 'eglot-server-programs '((enh-ruby-mode) . ("solargraph" "stdio")))
  (add-to-list 'eglot-server-programs '((elixir-mode) . ("/opt/homebrew/bin/elixir-ls")))
  :hook
  (prog-mode . eglot-ensure))

(provide 'init-eglot)
;;; init-eglot.el ends here

