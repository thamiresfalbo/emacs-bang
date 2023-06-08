;;; init-writing -- Configurations for Writing -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:
;; Org-mode
;;(require 'org) ;;Commented because it bugs org-journal if enabled
(setq org-startup-folded 'content
      org-return-follows-link t
      org-fontify-emphasized-text t)

(use-package org-journal
  :ensure t
  :defer t
  :config
  (setq org-journal-dir "~/org/journal/"
	org-journal-file-format "%Y-%m-%d"
	org-journal-date-format "%A, %e %B %Y"
	org-journal-file-type 'daily))


(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/tasks.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/org/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")
	("i" "Idea" entry (file+datetree "~/org/idea.org")
	 "* %U\n%?\n %i\n  %a")
	))

(setq org-agenda-files (quote ("~/org")))
(setq org-default-notes-file "~/org/notes.org")
(use-package org-bullets :hook (org-mode))

(setq org-todo-keywords
      '((sequence "TODO(t)" "ACTIVE(a)" "|" "DONE(d)")
	(sequence "|" "CANCELED(c)")))

;; Markdown
(use-package markdown-mode
  :init
  (setq markdown-hide-urls nil
	markdown-enable-highlighting-syntax nil
	markdown-fontify-code-blocks-natively t
	markdown-hide-markup nil)
  ;; :hook (markdown-mode . auto-fill-mode)
  :mode ("\\.md\\'" . gfm-mode))

;; Writing Extensions
(use-package fountain-mode)

(use-package writeroom-mode
  :config
  (setq writeroom-fullscreen-effect fullboth)
  :hook
  (writeroom-mode . visual-line-mode)
  (writeroom-mode . variable-pitch-mode)
  (markdown-mode org-mode latex-mode tex-mode fountain-mode gfm-mode))

;; Flyspell
(require 'flyspell)
(add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'text-mode-hook 'flyspell-mode)
(eval-after-load "flyspell"
  '(progn
     (define-key flyspell-mouse-map [down-mouse-3] #'flyspell-correct-word)
     (define-key flyspell-mouse-map [mouse-3] #'undefined)))

(provide 'init-writing)
;;; init-writing.el ends here
