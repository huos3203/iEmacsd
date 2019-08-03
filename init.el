(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'init-packages)
(require 'init-ui)   

;;历史记录
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;禁止备份文件
(setq make-backup-files nil)
;;org 代码片段高亮
(require 'org)
(setq org-src-fontify-natively t)
;;激活删除后输入文本
(delete-selection-mode t)

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


;;org-mode配置org-agenda工作目录
(setq org-agenda-files '("~/hsg/hexo/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-my-init-file)
 
(put 'upcase-region 'disabled nil)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 1)
 '(package-selected-packages (quote (monokai-theme company hungry-delete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
