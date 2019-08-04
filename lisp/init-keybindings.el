;;快捷键绑定配置管理

;;调用init.el中声明打开偏好设置文件的函数
(global-set-key (kbd "<f2>") 'open-my-init-file)

;;查看buffer历史记录
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
;;智能搜索功能mini buffer窗口
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

;;函数帮助文档快捷键
;;查找函数
(global-set-key (kbd "C-h C-f") 'find-function)
;;查找变量
(global-set-key (kbd "C-h C-v") 'find-variable)
;;查找关键字
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;;快速查找版本库管理的文件
(global-set-key (kbd "C-c p f") 'counsel-git)

;;org-mode
(global-set-key (kbd "C-c a") 'org-agenda)
;;remmber记事本
(global-set-key (kbd "C-c r") 'org-capture)

(provide 'init-keybindings)
