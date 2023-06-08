;;; init-system.el -- Summary
;;; Commentary:
;;; Code:

(cond
 ((string-equal system-type "windows-nt")) ; Microsoft Windows
 ((string-equal system-type "darwin") ; macOS
  (require 'init-macos))
 ((string-equal system-type "gnu/linux"))) ; linux

(with-eval-after-load "ispell"
      (setq ispell-program-name "aspell")
      (setq ispell-dictionary "en_US"))

(provide 'init-system)
;;; init-system.el ends here
