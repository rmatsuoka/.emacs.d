(package-install-with-refresh 'evil)
(setq evil-default-state 'emacs)
(setq evil-insert-state-modes '())
(setq evil-motion-state-modes '())
(setq evil-disable-insert-state-bindings t)
(with-eval-after-load 'evil
  (evil-set-initial-state 'prog-mode 'normal)
  (evil-set-initial-state 'text-mode 'normal))

(evil-mode 1)
(provide 'init-evil)
;;; init-evil.el ends here
