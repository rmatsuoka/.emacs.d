;; -*- lexical-binding: t; -*-

(defun my-mouse-settings ()
  (setq mouse-wheel-scroll-amount '(1))
  (setq mouse-wheel-progressive-speed nil)
  (setq mouse-wheel-follow-mouse t))

(defun my-x-settings ()
  ;; theme
  (my-mouse-settings)
  (scroll-bar-mode -1)
  (tool-bar-mode -1)
  (add-to-list 'prog-mode-hook 'hl-line-mode))

(my-x-settings)
(provide 'init-x)
;;; init-x.el ends here
