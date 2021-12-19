(package-install-with-refresh 'vscode-dark-plus-theme)

(defun my-mouse-settings ()
  (setq mouse-wheel-scroll-amount '(1))
  (setq mouse-wheel-progressive-speed nil)
  (setq mouse-wheel-follow-mouse t))

(create-fontset-from-ascii-font
 "cica-12:weight=normal:slant=normal"
 nil
 "Cica")

(set-fontset-font
 "fontset-Cica"
 'unicode
 "cica:weight=normal:slant=normal"
 nil
 'append)

(defun my-x-settings ()
  ;; theme
  (add-to-list 'default-frame-alist '(font . "fontset-Cica"))
  (my-mouse-settings)
  (load-theme 'vscode-dark-plus t)
  (scroll-bar-mode -1)
  (tool-bar-mode -1)
  (add-to-list 'prog-mode-hook 'hl-line-mode))

(my-x-settings)
(provide 'init-x)
;;; init-x.el ends here
