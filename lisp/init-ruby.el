;;; init-ruby.el --- Ruby Support
;;; Commentary:
;;; Code:

(use-package projectile-rails
  :after projectile)

(use-package bundler)

(straight-use-package
 '(yasnippet-ruby-mode
   :type git
   :host github
   :repo "bmaland/yasnippet-ruby-mode"))

(use-package rspec-mode
  :config
  (rspec-install-snippets)
  (rspec-mode))

(use-package robe)

(use-package enh-ruby-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist
               '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode))
  :hook
  ((projectile-rails-mode bundler rspec-mode robe-mode) . enh-ruby-mode))



(provide 'init-ruby)
;;; init-ruby.el ends here
