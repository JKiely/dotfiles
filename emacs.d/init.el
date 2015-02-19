;; (defun comment-or-uncomment-region-or-line ()
;;     "Comments or uncomments the region or the current line if there's no active region."
;;     (interactive)
;;     (let (beg end)
;;         (if (region-active-p)
;;             (setq beg (region-beginning) end (region-end))
;; 	  (setq beg (line-beginning-position) end (line-end-position)))
;;         (comment-or-uncomment-region beg end)))


;;(define-key c-mode-base-map (kbd "C-/") 'comment-or-uncomment-line-or-region) 

(add-to-list 'load-path "~/.emacs.d/")
;(defvar my-packages '(paredit idle-highlight-mode ido-ubiquitous find-file-in-project magit smex scpaste))
;(package-initialize)
;(dolist (p my-packages)
;    (when (not (package-installed-p p))
;          (package-install p)))

(require 'package)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))

(global-set-key [M-mouse-1] 'mouse-set-point)

(global-set-key (kbd "C-;") 'comment-region)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)

(global-linum-mode 1)

(setq inhibit-startup-message t
inhibit-startup-echo-area-message t) 

(define-key global-map (kbd "RET") 'newline-and-indent)


(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

