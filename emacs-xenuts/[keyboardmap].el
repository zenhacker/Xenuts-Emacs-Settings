;putty下使用时，使用的键盘映射，putty的键盘设置必须为SCO。其他终端下，不需要这个键盘映射文件
(add-to-list 'load-path "~/emacs-xenuts/plugins/keyboard-setting")
(load "keyboard-setting-putty.el")