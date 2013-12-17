(add-to-list 'load-path "~/emacs-xenuts")

(load "[basic].el") ;emacs内嵌的一些属性开关的设置在这里面

(load "[calendar].el") ;calendar设置

(load "[keyboardmap].el") ;键盘映射，例如putty下

(load "[plugins].el") ;一些杂七杂八插件的设置

(load "[coding].el") 

(load "cyexpand.el") ;有时间这个文件里面的内容也精简归类一下，太杂了这里面，现在先用着吧

(load "[keybinding].el") ;所有非emacs默认的自设的绑定快捷键都在这里面统一设置[必须放在所有文件之后加载]

; TODO............
;3. 精简cyexpand.el文件
;4. Dired的使用