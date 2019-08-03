;;禁止音效
(setq ring-bell-function 'ignore)
;;
;;buffer历史记录
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;禁止备份文件
(setq make-backup-files nil)
(setq auto-save-default nil)

;;开启自动匹配小括号高亮
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(global-auto-revert-mode t)
 
;;snippet
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(;;signature
                                            ("8zl" "zilongshanren")
                                            ;;别名
                                            ("hell" "hello world")
                                            ))
(provide 'init-better-default)
