(defun eval-print-line-sexp (&optional eval-line-sexp-arg-internal)
  (interactive "P")
  (end-of-line)
  (eval-print-last-sexp eval-line-sexp-arg-internal))
(define-key lisp-interaction-mode-map "\n" 'eval-print-line-sexp)

(provide 'init-elisp)
;;; init-elisp.el ends here
