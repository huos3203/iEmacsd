(add-to-list 'load-path "~/.emacs.d/lisp")
;;声明打开偏好设置文件的函数
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))


(require 'init-packages)
(require 'init-ui)   
(require 'init-org)
(require 'init-better-default)
(require 'init-keybindings) 

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
