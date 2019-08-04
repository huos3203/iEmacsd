(package-initialize)

;;使用cask工具管理package依赖插件, 类似cocoapods工具。
;;步骤：
;;pallet-init 在.emacs.d目录下生成一个Cask文件。包含所有的package清单
;;pallet-install 在.cask目录下新建版本号目录，将package安装到版本目录下的elpa中
;; 此时就可以把.emacs.d/elpa目录删掉，注释掉lisp/init-package.el相关配置
;; 全权交予cask管理package 。新安装的package会自动注册到cask文件

;;(require 'cask "~/.cask/cask.el")
;;(cask-initialize)
;;(require 'pallet)
;;(pallet-mode t)

;;指定模块存放的root目录
(add-to-list 'load-path "~/.emacs.d/lisp")


;;emacs构造器模块，在这里创建复用率极高的方法
;;或通过init-func.el来管理，在(require 'init-func)
;;例如：打开偏好设置文件的函数，该函数在keybindings.el绑定了F2快捷键
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;;其他模块分别是：packages/UI/org/better/keybingdings
(require 'init-packages)
(require 'init-ui)   
(require 'init-org)
(require 'init-better-default)
(require 'init-keybindings)



(put 'upcase-region 'disabled nil)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)

