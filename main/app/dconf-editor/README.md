
# 調校 dconf-editor

原始來源：「[[教學] Ubuntu 14.04的調校](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=317196#forumpost317196P)」

```
＜三、補足篇＞

9.
安裝進階的桌面環境設定工具「dconf-editor」。

sudo apt-get install dconf-editor



下記指令可以為Unity的dconf設定值添加「點擊啟動圖示收起已開視窗」之設定。（重新登入後生效）

gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-minimize-window true


by xenomorph0525

```
