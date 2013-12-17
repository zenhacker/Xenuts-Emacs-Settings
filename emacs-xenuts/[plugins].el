(add-to-list 'load-path "~/emacs-xenuts/plugins/codepilot")
(add-to-list 'load-path "~/emacs-xenuts/plugins/emacs-eclim")
(add-to-list 'load-path "~/emacs-xenuts/plugins/icicles")
(add-to-list 'load-path "~/emacs-xenuts/plugins/gnuserv")


;; -------------- rect-mark ------------------------
;; 按下shift拖拽鼠标即可选择矩形区域
;; Support for marking a rectangle of text with highlighting.
;(require 'rect-mark)
;(define-key ctl-x-map "r\C-@" 'rm-set-mark)
;(define-key ctl-x-map [?r ?\C-\ ] 'rm-set-mark)
;(define-key ctl-x-map "r\C-x" 'rm-exchange-point-and-mark)
;(define-key ctl-x-map "r\C-w" 'rm-kill-region)
;(define-key ctl-x-map "r\M-w" 'rm-kill-ring-save)
;(define-key global-map [S-down-mouse-1] 'rm-mouse-drag-region)
;(autoload 'rm-set-mark "rect-mark"
;  "Set mark for rectangle." t)
;(autoload 'rm-exchange-point-and-mark "rect-mark"
;  "Exchange point and mark for rectangle." t)
;(autoload 'rm-kill-region "rect-mark"
;  "Kill a rectangular region and save it in the kill ring." t)
;(autoload 'rm-kill-ring-save "rect-mark"
;  "Copy a rectangular region to the kill ring." t)
;(autoload 'rm-mouse-drag-region "rect-mark"
;  "Drag out a rectangular region with the mouse." t)
;; One vision of a better picture mode.
;(add-hook 'picture-mode-hook 'rm-example-picture-mode-bindings)
;(autoload 'rm-example-picture-mode-bindings "rect-mark"
;  "Example rect-mark key and mouse bindings for picture mode.")

;; -------------- tabbar --------------------
(require 'tabbar)
(tabbar-mode)
;??;(load "tabbar-group")

;; -------------- redo ------------------------
(require 'redo)
