
;;org 代码片段高亮
(require 'org)
(setq org-src-fontify-natively t)

;;org-mode配置org-agenda工作目录
(setq org-agenda-files '("~/hsg/hexo/org"))
;;设置草稿箱模版
(setq org-capture-templates
        '(("t" "Todo" entry (file+headline "~/hsg/hexo/org/gtd.org" "工作安排")
           "* TODO [#B] %?\n  %i\n"
           :empty-lines 1)))

(provide 'init-org)

