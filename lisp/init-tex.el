(package-install-with-refresh 'auctex)
(add-hook 'TeX-mode-hook (lambda () (display-fill-column-indicator-mode -1)))
(add-hook 'TeX-mode-hook (lambda () (auto-fill-mode -1)))
(add-hook 'TeX-mode-hook (lambda () (electric-pair-local-mode -1)))
(setq TeX-auto-save t)
(setq TeX-parse-self t)

;;; auto completion
(setq TeX-electric-math (cons "$" "$"))
(setq LaTeX-electric-left-right-brace t)


(setq TeX-font-replace-function 'TeX-font-replace-macro)
(setq TeX-font-list '((2 "\\textbf{" "}")
                      (3 "\\textsc{" "}")
                      (5 "\\textem{" "}")
                      (9 "\\textit{" "}")
                      (18 "\\textrm{" "}")
                      (19 "\\textsl{" "}")
                      (20 "\\texttt{" "}")
                      (4 "" "" t)))

(provide 'init-tex)
;;; init-tex.el ends here
