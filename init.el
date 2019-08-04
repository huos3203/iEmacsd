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

