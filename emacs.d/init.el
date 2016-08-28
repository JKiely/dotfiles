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
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(global-flycheck-mode)
(require 'flymake-python-pyflakes)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)


(load "~/.emacs.d/lisp/PG/generic/proof-site")
(custom-set-variables '(coq-prog-name "/Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop") '(proof-three-window-enable t))

(add-hook 'python-mode-hook '(lambda ()
                              (setq python-indent 2)))

(setenv "PATH" (concat (getenv "PATH") ":/Users/jkiely/anaconda/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin"))
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))

(global-linum-mode 1)

(setq inhibit-startup-message t
inhibit-startup-echo-area-message t) 

(define-key global-map (kbd "RET") 'newline-and-indent)

(setq org-journal-dir "~/Dropbox/personal/journal/")

(setq magit-last-seen-setup-instructions "1.4.0")

(setq org-startup-indented t)
(setq org-startup-truncated nil)

(setq ispell-program-name "/usr/local/bin/ispell")

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "gfm-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(setq load-path (cons  "/usr/local/otp/lib/tools-<ToolsVer>/emacs"
                       load-path))
(setq erlang-root-dir "/usr/local/otp")
(setq exec-path (cons "/usr/local/otp/bin" exec-path))
(require 'erlang)
(setq erlang-electric-commands '())
