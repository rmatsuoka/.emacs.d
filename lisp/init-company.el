(add-to-list 'package-pinned-packages '(company . "melpa"))
(package-install-with-refresh 'company)

(add-to-list 'prog-mode-hook 'company-mode)
(setq company-echo-delay 0
      company-idle-delay 0
      company-minimum-prefix-length 1
      company-tooltip-align-annotations t)
(with-eval-after-load 'company
  (define-key company-active-map (kbd "C-n") (lambda () (interactive) (company-complete-common-or-cycle 1)))
  (define-key company-active-map (kbd "C-p") (lambda () (interactive) (company-complete-common-or-cycle -1)))
  (diminish 'company-mode))

(provide 'init-company)
;;; init-company.el ends here
