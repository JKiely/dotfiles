(add-to-list 'load-path "~/.emacs.d/lisp")

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
  )

(setq mac-command-modifier 'control)

(package-initialize)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)


(add-hook 'python-mode-hook '(lambda ()
                              (setq python-indent 2)))

(global-linum-mode 1)

(setq inhibit-startup-message t
inhibit-startup-echo-area-message t) 

(define-key global-map (kbd "RET") 'newline-and-indent)

(setq org-journal-dir "~/Dropbox/personal/journal/")

(setq magit-last-seen-setup-instructions "1.4.0")

(setq org-startup-indented t)
(setq org-startup-truncated nil)

(setq ispell-program-name "/usr/local/bin/ispell")
