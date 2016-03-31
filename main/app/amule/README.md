
# 調校 aMule

原始來源：「[[教學] Ubuntu 14.04的調校](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=317196#forumpost317196P)」

```
＜三、補足篇＞

10.
安裝電驢檔案分享軟體「amule」。

sudo apt-get install amule



還有修正Firefox與ed2k通訊協定的關聯（使點擊ed2k超連結時不跑出空白分頁），
請先拖曳下記指令到終端機，接著關閉Firefox等待幾秒，讓prefs.js更新資料完畢後，再執行該指令。

sed -i '$a user_pref("network.protocol-handler.expose.ed2k", false);' ~/.mozilla/firefox/*.default/prefs.js


by xenomorph0525
```
