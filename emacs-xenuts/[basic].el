; 添加Emacs搜索路径
(add-to-list 'load-path "~/emacs-xenuts")
(add-to-list 'load-path "~/emacs-xenuts/plugins")

;; ===================================
;; ========== Minibuffer设置 ==========
;; ===================================
;minibuffer上显示时间
(display-time-mode 1)

;时间使用24小时制
(setq display-time-24hr-format t)

;显示包括日期和具体时间
(setq display-time-day-and-date t)

;minibuffer上显示列号
(setq column-number-mode t)

;##;显示标题栏 %f 缓冲区完整路径 %p 页面百分数 %l 行号
;(setq frame-title-format "%f")

;; =================================
;; =========== Buffer =============
;; =============================
;##;设定行距
;(setq default-line-spaceing 1)

;##;页宽
;(setq default-fill-column 6)

;;缺省模式 text-mode
;@;(setq default-major-mode 'text-mode)

;;以空行结束
;@;(setq require-final-newline t)

;;设置kill记录个数
(setq kill-ring-max 200)

;;开启语法高亮。
(global-font-lock-mode 1)

;##;高亮显示区域选择
;(transient-mark-mode t)
;(setq-default transient-mark-mode t)

;##;页面平滑滚动,scroll-margin 3 靠近屏幕边沿3行开始滚动，正好可以看到上下文
;;(setq scroll-margin 3 scroll-consrvatively 10000)

;;高亮显示成对括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;##;鼠标指针避光标
;;(mouse-avoidance-mode 'animate)

;;粘贴于光标处,而不是鼠标指针处
(setq mouse-yank-at-point t)

;; ================================
;; =========== Echo =============
;; ================================
;;闪屏报警
(setq visible-bell t)
;;使用y or n提问
(fset 'yes-or-no-p 'y-or-n-p)
;;锁定行高
(setq resize-mini-windows nil)
;;递归使用minibuffer
(setq enable-recursive-minibuffers t)
;;当使用M-x COMMAND后，过1秒显示该COMMAND绑定的键
;@;(setq suggest-key-bindings-1)   ;;emacs的默认设置

;; ======================================
;; ============== Editing ==============
;; ==================================
;;不产生备份文件
(setq make-backup-files nil)

;;不生成临时文件
(setq-default make-backup-files nil)

;;只渲染当前屏幕语法高亮，加快显示速度
(setq lazy-lock-defer-on-scrolling t)
(setq font-lock-maximum-decoration t)

;;设置TAB宽度为4
(setq default-tab-width 4) 

;;以下设置tab缩进
(setq indent-tabs-mode t)
(setq c-indent-level 4)
(setq c-continued-statement-offset 4)
(setq c-brace-offset -4)
(setq c-argdecl-indent 4)
(setq c-label-offset -4)
(setq c-basic-offset 4)
(global-set-key "\C-m" 'reindent-then-newline-and-indent)

;;设置默认工作目录
(setq default-directory "~/work/") 

;; =================================
;; ======= Appearance ============
;; =============================
;##; 去掉滚动条
;;(set-scroll-bar-mode nil)

;;关闭开启画面
(setq inhibit-startup-message t)

;##;禁用工具栏
;;(tool-bar-mode nil)
;;禁用菜单栏
;@;(menu-bar-mode nil)

;;========================
;; =============== others =======
;; ===================
;;-------------ibuffer,查看bufer
(require 'ibuffer) ;替代原本的list-buffers，ibuffer更好用
(global-set-key ( kbd "C-x C-b")' ibuffer)

;;自动重载在外部被更改的文件内容
(global-auto-revert-mode 1)

;##;custome的风格改为单一的树状风格
;;(setq custom-buffer-style 'brackets)

;##;设置 sentence-end 可以识别中文标点。不用在 fill 时在句号后插入两个空格。
;(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
;(setq sentence-end-double-space nil)

;##;设置缺省主模式是text，,并进入auto-fill次模式.而不是基本模式fundamental-mode
;(setq default-major-mode 'text-mode)
;(add-hook 'text-mode-hook 'turn-on-auto-fill) 

;; 在行首 C-k 时，同时删除行尾的换行符。
(setq-default kill-whole-line t)

;;当你在shell、telnet、w3m等模式下时，必然碰到过要输入密码的情况,此时加密显出你的密码
(add-hook 'comint-output-filter-functions
      'comint-watch-for-password-prompt)

;##;把这些缺省禁用的功能打开
;(put 'scroll-left 'disabled nil)     ;允许屏幕左移
;(put 'scroll-right 'disabled nil)    ;允许屏幕右移
;(put 'set-goal-column 'disabled nil)
;(put 'narrow-to-region 'disabled nil) 
;(put 'upcase-region 'disabled nil)
;(put 'downcase-region 'disabled nil)
;(put 'LaTeX-hide-environment 'disabled nil)

;;允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)

;@; 自动的在文件末增加一新行
;(setq require-final-newline t)

;##; 当光标在行尾上下移动的时候，始终保持在行尾。
;(setq track-eol t)

;; 当浏览 man page 时，直接跳转到 man buffer。
(setq Man-notify-method 'pushy)

;##;(setq speedbar-show-unknown-files t);;可以显示所有目录以及文件
;##;(setq speedbar-update-flag nil)
;##;(setq speedbar-use-images nil);;不使用 image 的方式
;##;(setq speedbar-verbosity-level 0)

;;让 dired 可以递归的拷贝和删除目录。
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

;; 设置时间戳，标识出最后一次保存文件的时间。
(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(setq time-stamp-format "%:y-%02m-%02d %3a %02H:%02M:%02S xenuts")

;##;(setq default-frame-alist
;; '((height . 35)(width . 100)(menubar-lines . 20)(tool-bar-lines . 0)))

