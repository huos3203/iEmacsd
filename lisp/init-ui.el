;;模块化管emacs主题样式的配置

;;隐藏tool bar
(tool-bar-mode -1)
;;(scroll-bar-mode -1)

;;行缩进
(electric-indent-mode 1)
;;开启行号
(global-linum-mode t)

;;开启自动匹配小括号高亮
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;;当前行高亮
(global-hl-line-mode t)

;;关闭启动画面
(setq inhibit-splash-screen t)
;;设置光标样式
(setq-default cursor-type 'bar)
;;启动全屏显示
(setq initial-frame-alist (quote ((fullscreen . maximized))))

(provide 'init-ui)
