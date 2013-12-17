;;===========================================================
;;键绑定
;;===========================================================

;;============================================================
;;必备扩展
;;============================================================
(global-set-key [f1] 'manual-entry)
(global-set-key [C-f1] 'info )

;;激活ecb
(global-set-key [f2] 'ecb-activate)
;;隐藏和显示ecb窗口
(global-set-key [C-f2] 'ecb-show-ecb-windows)
(global-set-key [M-f2] 'ecb-hide-ecb-windows)

(global-set-key [f3] 'set-mark-command)

;(global-set-key (kbd "C-u") 'undo)
(require 'redo)
(global-set-key (kbd "C-z") 'redo)

(global-set-key [f4] 'grep)

(global-set-key [f5] 'gdb)


(global-set-key [f6] 'speedbar-get-focus)
;;显示/隐藏工具栏 方便调试
(global-set-key [M-f6] 'tool-bar-mode)
;;显示/隐藏菜单栏
(global-set-key [C-f6] 'menu-bar-mode)

;;编译当前窗口文件
(setq-default compile-command "gcc -g ")    
(global-set-key [f7] 'compile)

;;目的是开一个shell的小buffer，用于更方便地测试程序(也就是运行程序了)，我经常会用到。
;;f8就是另开一个buffer然后打开shell，C-f8则是在当前的buffer打开shell,shift+f8清空eshell
(defun open-eshell-other-buffer ()
  "Open eshell in other buffer"
  (interactive)
  (split-window-vertically)
  (eshell))
(defun my-eshell-clear-buffer ()
  "Eshell clear buffer."
  (interactive)
  (let ((eshell-buffer-maximum-lines 0))
    (eshell-truncate-buffer)))
(global-set-key [(f8)] 'open-eshell-other-buffer)
(global-set-key [C-f8] 'eshell)
(global-set-key [M-f8] 'my-eshell-clear-buffer)

;;设置[C-f9]为调用dired命令
(global-set-key [C-f9] 'dired)
(global-set-key [f9] 'list-bookmarks) 

;菜单
(global-set-key [f10] 'menu-bar-open) 

;;快速察看日程安排
(global-set-key [f11] 'calendar)

;;F12调到函数定义
(global-set-key [f12] 'semantic-ia-fast-jump)
;;shift-f12跳回去
(global-set-key [C-f12]
	(lambda ()
	(interactive)
	(if (ring-empty-p (oref semantic-mru-bookmark-ring ring))
	(error "Semantic Bookmark ring is currently empty"))
	(let* ((ring (oref semantic-mru-bookmark-ring ring))
	(alist (semantic-mrub-ring-to-assoc-list ring))
	(first (cdr (car alist))))
	(if (semantic-equivalent-tag-p (oref first tag)
	(semantic-current-tag))
	(setq frist (cdr (car (cdr alist)))))
	(semantic-mrub-switch-tags first))))


;;设置C-g为goto-line
(global-set-key (kbd "C-g") 'goto-line)

;;设置home键指向buffer开头，end键指向buffer结尾
(global-set-key [home] 'beginning-of-buffer)
(global-set-key [end] 'end-of-buffer)

;;关闭当前窗口,alt+4
(global-set-key (kbd "M-4") 'kill-this-buffer)
;;关闭其他窗口,alt+1
(global-set-key (kbd "M-1") 'delete-other-windows)
;;水平分割窗口,alt+2
(global-set-key (kbd "M-2") 'split-window-vertically)
;;垂直分割窗口,alt+3
(global-set-key (kbd "M-3") 'split-window-horizontally)
;;切换到其他窗口，alt+0
(global-set-key (kbd "M-0") 'other-window)

(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-c <up>") 'windmove-up)
