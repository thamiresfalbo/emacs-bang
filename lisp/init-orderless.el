;;; init-orderless.el --- Orderless Support -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:
(savehist-mode)
(use-package orderless
  :init
  (setq completion-styles '(orderless basic)
	completion-ignore-case t
	orderless-matching-styles '(orderless-literal orderless-flex orderless-regexp )))

(defun just-one-face (fn &rest args)
  (let ((orderless-match-faces [completions-common-part]))
    (apply fn args)))
(advice-add 'company-capf--candidates :around #'just-one-face)

(defun company-completion-styles (capf-fn &rest args)
  (let ((completion-styles '(basic orderless-literal orderless-regexp)))
    (apply capf-fn args)))

(advice-add 'company-capf :around #'company-completion-styles)


(provide 'init-orderless)
;;; init-orderless.el ends here.
