;;模块化管理第三方packages的相关配置
;; 
;;配置插件源：M-x packages-list-packages
(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
    ;;(add-to-list 'package-archives '("popkit" . "http://elpa.popkit.org/packages") t)
    ;;(setq package-archives '(("popkit" . "http://elpa.popkit.org/packages")))
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
				   popwin
				   org-pomodoro
				   evil
				   evil-leader
				   window-numbering
				   powerline
				   )  "Default packages")

(setq package-selected-packages zilongshanren/packages)
;;声明并安装
(defun zilongshanren/packages-installed-p ()
    (loop for pkg in zilongshanren/packages
          when (not (package-installed-p pkg)) do (return nil)
          finally (return t)))
;;失败时，重新安装
(unless (zilongshanren/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg zilongshanren/packages)
      (when (not (package-installed-p pkg))
        (package-install pkg))))

;;自动补齐
(global-company-mode t)

;;自动补齐括号
;;(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
;;全局模式
(smartparens-global-mode t)

;;智能搜索功能mini buffer窗口
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;;加载monokai主题样式
(load-theme 'monokai t)

;;自动激活当前buffer光标
(require 'popwin)
(popwin-mode t)

;;一键删除多余空格
;;(require 'hungry-delete)
(global-hungry-delete-mode)


;;设置扩张名默认打开方式
(setq auto-mode-alist
	  (append
	   '(("\\.js\\'" . js2-mode))
	   auto-mode-alist))

;;安装js驱动器nodejs
(require 'nodejs-repl)
;;org
(require 'org-pomodoro)
;;开启evil模式
(evil-mode 1)
(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)
;;设置C-u支持向上翻页,手动设置无效，采用customize-group evil偏好设置
;;(setq evil-want-C-u-scroll t)

;;定义leader,手动加载evil-mode方法：M-x evil-leader RET
(global-evil-leader-mode)
(evil-leader/set-key
  "ff" 'find-file
  "bb" 'switch-to-buffer
  "bk" 'kill-buffer
  "1" 'select-window-1
  "2" 'select-window-2
  "3" 'select-window-3
  "4" 'select-window-4
  "w/" 'split-window-right
  "w-" 'split-window-below
  ":" 'counsel-M-x
  "wm" 'delete-other-windows) 

;;窗口切换插件
(window-numbering-mode 1)
;;设置linebar 样式
(require 'powerline)
(powerline-default-theme)

;;指定node驱动器路径
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(provide 'init-packages)
