;; (defun comment-or-uncomment-region-or-line ()
;;     "Comments or uncomments the region or the current line if there's no active region."
;;     (interactive)
;;     (let (beg end)
;;         (if (region-active-p)
;;             (setq beg (region-beginning) end (region-end))
;; 	  (setq beg (line-beginning-position) end (line-end-position)))
;;         (comment-or-uncomment-region beg end)))


;;(define-key c-mode-base-map (kbd "C-/") 'comment-or-uncomment-line-or-region) 

(global-set-key [M-mouse-1] 'mouse-set-point)

(global-set-key (kbd "C-;") 'comment-region)


(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )
