;;; init-dirvish.el --- A better version of Dired-*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:
(use-package dirvish
  :ensure t
  :custom
  (dirvish-mode-line-format ; it's ok to place string inside
   '(:left (sort file-ext " " file-size symlink) :right (omit yank index)))
  (dirvish-attributes '(subtree-state all-the-icons file-size))
  :config
  (dirvish-override-dired-mode)
  (dirvish-peek-mode)
  (setq dired-dwim-target t)
  (setq dired-listing-switches "-l --ignore-backups --almost-all --human-readable --time-style=long-iso --group-directories-first --no-group")
  (setq dired-mouse-drag-files t)                   ; added in Emacs 29
  (setq mouse-drag-and-drop-region-cross-program t) ; added in Emacs 29
  (setq mouse-1-click-follows-link nil)
  :bind
  ;; Bind `dirvish|dirvish-side|dirvish-dwim' as you see fit
  (("C-c f" . dirvish-fd)
   ("<f3>" . dirvish-side)
   ("C-x d" . dirvish)
   :map dired-mode-map ; Dirvish respects all the keybindings in this map
   ;; ("h" . dired-up-directory)
   ;; ("j" . dired-next-line)
   ;; ("k" . dired-previous-line)
   ;; ("l" . dired-find-file)
   ;; ("i" . wdired-change-to-wdired-mode)
   ;; ("." . dired-omit-mode)
   ("TAB" . dirvish-subtree-toggle)
   ("SPC" . dirvish-history-jump)
   ("M-n" . dirvish-history-go-forward)
   ("M-p" . dirvish-history-go-backward)
   ("M-s" . dirvish-setup-menu)
   ("M-f" . dirvish-toggle-fullscreen)
   ("*"   . dirvish-mark-menu)
   ("r"   . dirvish-fd-roam)
   ("b"   . dirvish-bookmark-goto)
   ("f"   . dirvish-file-info-menu)
   ([remap dired-sort-toggle-or-edit] . dirvish-quicksort)
   ([remap dired-do-redisplay] . dirvish-ls-switches-menu)
   ([remap dired-summary] . dirvish-dispatch)
   ([remap dired-do-copy] . dirvish-yank-menu)
   ([remap mode-line-other-buffer] . dirvish-history-last)
   :map dirvish-mode-map
   ("<mouse-1>" . dirvish-subtree-toggle-or-open)
   ("<mouse-2>" . dired-mouse-find-file-other-window)
   ("<mouse-3>" . dired-mouse-find-file)))

(add-hook 'dired-mode-hook 'dired-omit-mode)

(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..*$"))

(provide 'init-dirvish)
;;; init-dirvish.el ends here.
