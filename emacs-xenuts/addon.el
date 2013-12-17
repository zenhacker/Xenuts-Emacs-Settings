;;---------- 
(require 'rect-mark)

;;---------- setnu
;(require 'setnu)

;;---------- RST
(require 'rst)
(add-hook 'text-mode-hook 'rst-text-mode-bindings)


(setq auto-mode-alist
      (append '(("\\.rst$" . rst-mode)
                 ("\\.rest$" . rst-mode)) auto-mode-alist))

(add-hook 'rst-adjust-hook 'rst-toc-insert-update)

;;========== buffer name
(load "shell-buffer.el")

;;---------- tabbar
(require 'tabbar)
(tabbar-mode)
(global-set-key (kbd "s-3") 'tabbar-backward-group)
(global-set-key (kbd "s-4") 'tabbar-forward-group)
(global-set-key (kbd "s-1") 'tabbar-backward)
(global-set-key (kbd "s-2") 'tabbar-forward)
;; 新建default组
(load "tabbar-group")



