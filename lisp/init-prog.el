(package-install-with-refresh 'rainbow-delimiters)

(add-to-list 'prog-mode-hook 'rainbow-delimiters-mode)
(add-to-list 'prog-mode-hook 'display-line-numbers-mode)
(add-to-list 'prog-mode-hook (lambda ()(setq truncate-lines t)))
(add-to-list 'prog-mode-hook 'hl-line-mode)

(provide 'init-prog)
;;; init-prog.el ends here
