(package-install-with-refresh 'elpy)

(setq elpy-rpc-python-command "python3")
(setq python-shell-interpreter "python3")

(advice-add 'python-mode :before 'elpy-enable)
(provide 'init-python)
;;; init-python.el ends here
