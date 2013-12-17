;; ==================================================================
;; ==================== Emacs 默认的功能键组合 =====================
;; ==================================================================
;[f1]默认 view-order-manuals
;[C-f1]默认无定义
;[M-f1]默认无定义
;[S-f1]默认无定义

;[f2]默认 2C-newline
;[C-f2]默认无定义
;[M-f2]默认无定义
;[S-f2]默认无定义

;[f3]默认 kmacro-start-macro-or-insert-counter
;[C-f3]默认无定义
;[M-f3]默认无定义
;[S-f3]默认无定义

;[f4]默认 kmacro-end-or-call-macro
;[C-f4]默认无定义
;[M-f4]默认无定义(putty定义为关闭终端)
;[S-f4]默认无定义(putty定义为关闭终端)

;[f5]默认无定义
;[C-f5]默认无定义
;[M-f5]默认无定义
;[S-f5]默认无定义

;[f6]默认无定义
;[C-f6]默认无定义
;[M-f6]默认无定义
;[S-f6]默认无定义

;[f7]默认无定义
;[C-f7]默认无定义
;[M-f7]默认无定义
;[S-f7]默认无定义

;[f8]默认无定义
;[C-f8]默认无定义
;[M-f8]默认无定义
;[S-f8]默认无定义

;[f9]默认无定义
;[C-f9]默认无定义
;[M-f9]默认无定义
;[S-f9]默认无定义

;[f10]默认 menu-bar-open
;[C-f10]默认无定义
;[M-f10]默认无定义
;[S-f10]默认无定义

;[f11]默认无定义
;[C-f11]默认无定义
;[M-f11]默认无定义
;[S-f11]默认无定义

;[f12]默认无定义
;[C-f12]默认无定义
;[M-f12]默认无定义
;[S-f12]默认无定义

;; ==========================================================================
;; ============================ [Basic => basic.el] ==========================
;; ==========================================================================
(global-set-key [f1] 'manual-entry)
(global-set-key [C-f1] 'info ) ;原先绑定在C-h i
(global-unset-key (kbd "C-h i"))
(global-set-key [M-f1] 'set-mark-command) ;原先绑定在C-@ 和 C-<SPC>
(global-unset-key "\C-@")
(global-unset-key (kbd "C-<SPC>"))

(global-set-key (kbd "C-x u") 'undo) ;原先绑定在C-x u, C-/, C-_
(global-unset-key "\C-_")
(global-unset-key (kbd "C-/"))

(global-set-key [f3] 'speedbar-get-focus)
(global-set-key [f4] 'grep)
(global-set-key [f5] 'gdb)

;;目的是开一个shell的小buffer，用于更方便地测试程序(也就是运行程序了)，我经常会用到。
;;f8就是另开一个buffer然后打开shell，C-f8则是在当前的buffer打开shell,shift+f8清空eshell
(defun open-eshell-other-buffer ()
  "Open eshell in other buffer"
  (interactive)
  (split-window-vertically)
  (eshell))
(defun xenuts-eshell-clear-buffer ()
  "Eshell clear buffer."
  (interactive)
  (let ((eshell-buffer-maximum-lines 0))
    (eshell-truncate-buffer)))
(global-set-key [f6] 'open-eshell-other-buffer)
(global-set-key [C-f6] 'eshell)
(global-set-key [M-f6] 'xenuts-eshell-clear-buffer)

;;快速察看日程安排
(global-set-key [f8] 'calendar)

;;设置[C-f9]为调用dired命令
(global-set-key [f9] 'dired)
(global-set-key [C-f9] 'list-bookmarks) 

;菜单
;(global-set-key [f10] 'menu-bar-open) ;emacs默认的
;;显示/隐藏菜单栏
(global-set-key [C-f10] 'menu-bar-mode);;putty下C-f10的映射有问题？？？？
;;显示/隐藏工具栏
(global-set-key [M-f10] 'tool-bar-mode)

;;设置home键指向buffer开头，end键指向buffer结尾
;(global-set-key [home] 'move-beginning-of-line) ;emacs默认的
;(global-set-key [end] 'move-end-of-line) ;emacs默认的

;;切换到其他窗口
(global-set-key (kbd "M-0") 'other-window) ;emacs默认是C-x o
(global-unset-key (kbd "C-x o"))

;;关闭其他窗口
(global-set-key (kbd "M-1") 'delete-other-windows) ;emacs默认是C-x 1
(global-unset-key (kbd "C-x 1"))

;;水平分割窗口
(global-set-key (kbd "M-2") 'split-window-vertically) ;emacs默认是C-x 2
(global-unset-key (kbd "C-x 2"))

;;垂直分割窗口
(global-set-key (kbd "M-3") 'split-window-horizontally);emacs默认是C-x 3
(global-unset-key (kbd "C-x 3"))

;;关闭当前buffer
(global-set-key (kbd "M-4") 'kill-this-buffer)

(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-c <up>") 'windmove-up)


;; ==========================================================================
;; ========================= [Coding => coding.el] =========================
;; ==========================================================================
;编译当前窗口文件
(setq-default compile-command "gcc -g ")    
(global-set-key [f7] 'compile)

;;激活ecb插件、隐藏ecb窗口、显示ecb窗口
(global-set-key [f2] 'ecb-activate)
(global-set-key [C-f2] 'ecb-show-ecb-windows)
(global-set-key [M-f2] 'ecb-hide-ecb-windows)

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

;; ==========================================================================
;; ========================= [Plugins => plugins.el] =========================
;; ==========================================================================
;; -------------- redo ------------------------
(global-set-key (kbd "C-x r") 'redo) ;



;; -------------- tabbar --------------------
;(global-set-key (kbd "s-3") 'tabbar-backward-group)
;(global-set-key (kbd "s-4") 'tabbar-forward-group)
;(global-set-key (kbd "s-1") 'tabbar-backward)
;(global-set-key (kbd "s-2") 'tabbar-forward)
















