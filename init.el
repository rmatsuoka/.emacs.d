;; Written by Ryuichi Matsuoka


;; Language enviroment
(set-language-environment "English")


;; coding system
(set-default-coding-systems 'utf-8)


;; Back up
(add-to-list 'backup-directory-alist
             (cons "." (expand-file-name "backups" user-emacs-directory)))


;; custom-file
(setq custom-file (locate-user-emacs-file "custom.el"))


;; interface
(menu-bar-mode -1)
(setq inhibit-splash-screen (< 1 (length command-line-args)))
(blink-cursor-mode 0)
(setq visible-cursor nil)
(show-paren-mode t)
(setq show-paren-style 'mix)
(setq visible-bell t)


;; general input
(electric-pair-mode t)
(setq-default indent-tabs-mode nil)


;; general control
(global-set-key (kbd "C-c t") 'toggle-truncate-lines)

(setq scroll-conservatively 1)
(setq scroll-error-top-bottom t)
(setq next-screen-context-lines 4)
(setq scroll-preserve-screen-position t)

(global-unset-key (kbd "C-h"))
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))
;;(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)
(global-set-key (kbd "C-x ?") 'help-command)
(fset 'yes-or-no-p 'y-or-n-p)


;; dired
(setq dired-dwim-target t)
(add-hook 'dired-mode-hook 'dired-hide-details-mode)


;; ediff
(setq ediff-window-setup-function 'ediff-setup-windows-plain)


;; Load path
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))


;; Package
(package-initialize)
(add-to-list 'package-archives '("melpa"."https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(defun package-install-with-refresh (package)
  (unless (package-installed-p package)
    (unless (assq package package-archive-contents)
      (package-refresh-contents))
    (if (assq package package-archive-contents)
        (package-install package)
      (display-warning 'init.el (format "can not install %s" package)))))


(package-install-with-refresh 'diminish)


;; require my lisp
(require 'init-skk)
(require 'init-ivy)
(require 'init-company)

(require 'init-git)
(require 'init-text)
(require 'init-elisp)
(require 'init-tex)

;; prog
(require 'init-prog)
(require 'init-python)

(require 'init-evil)


(provide 'init)
;;; init.el ends here
