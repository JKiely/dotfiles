(add-to-list 'load-path "~/.emacs.d/")

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
  )


(defvar my-packages '(org rspec-mode idle-highlight-mode ido-ubiquitous find-file-in-project magit smex scpaste))
(package-initialize)
(dolist (p my-packages)
    (when (not (package-installed-p p))
          (package-install p)))

(global-set-key [M-mouse-1] 'mouse-set-point)

(global-set-key (kbd "C-;") 'comment-region)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)

(add-hook 'python-mode-hook '(lambda ()
                              (setq python-indent 2)))

(global-linum-mode 1)

(setq inhibit-startup-message t
inhibit-startup-echo-area-message t) 

(define-key global-map (kbd "RET") 'newline-and-indent)


(setq magit-last-seen-setup-instructions "1.4.0")
