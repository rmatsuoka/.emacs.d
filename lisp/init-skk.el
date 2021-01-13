(package-install-with-refresh 'ddskk)
(setq default-input-method "japanese-skk")
(setq skk-jisyo-code 'utf-8)
(let ((my-skk-directory (expand-file-name "~/Sync/.skk")))
  (when (file-directory-p my-skk-directory)
    (setq skk-user-directory my-skk-directory)))
(provide 'init-skk)
;;; init-skk.el ends here
