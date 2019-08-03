(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
    )

(require 'cl)

;;add whatever packages you want here
(defvar zilongshanren/packages '(
				   company
				   monokai-theme
				   hungry-delete
				  ; smex
				   swiper
                                   counsel
				   smartparens
				   js2-mode
				   nodejs-repl
				   exec-path-from-shell
				   
				   )  "Default packages")

(setq package-selected-packages zilongshanren/packages)

(defun zilongshanren/packages-installed-p ()
    (loop for pkg in zilongshanren/packages
          when (not (package-installed-p pkg)) do (return nil)
          finally (return t)))

(unless (zilongshanren/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg zilongshanren/packages)
      (when (not (package-installed-p pkg))
        (package-install pkg))))

;;加载样式

;;隐藏tool bar
;;(tool-bar-mode -1)
;;(scroll-bar-mode -1)
(electric-indent-mode 1)
;;开启行号
(global-linum-mode t)
;;关闭启动画面
(setq inhibit-splash-screen t)
(setq-default cursor-type 'bar)
;;历史记录
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;自动补齐
(global-company-mode t)
;;安装插件工具

;;禁止备份文件
(setq make-backup-files nil)
;;org 代码片段高亮
(require 'org)
(setq org-src-fontify-natively t)
;;激活删除后输入文本
(delete-selection-mode t)
;;开启自动匹配小括号高亮
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;;当前行高亮
(global-hl-line-mode t)3
;;加载monokai主题样式
(load-theme 'monokai t)
;;一键删除多余空格
(require 'hungry-delete)
(global-hungry-delete-mode)
;;增强M-x功能的插件smex
;(require 'smex)
;(smex-initialize)
;(global-set-key (kbd "M-x") 'smex)
;;swiper 增强搜索功能mini窗口
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
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


;;自动补齐括号
(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
;;全局模式
(smartparens-global-mode t)
;;设置扩张名默认打开方式
(setq auto-mode-alist
	  (append
	   '(("\\.js\\'" . js2-mode))
	   auto-mode-alist))
;;安装js驱动器nodejs
(require 'nodejs-repl)
;;指定node驱动器路径
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

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
