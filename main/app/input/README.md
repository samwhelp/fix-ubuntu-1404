
# 調校 輸入法

原始來源：「[[教學] Ubuntu 14.04的調校](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=317196#forumpost317196P)」

```
＜二、優化篇＞


1.
把煩人的浮動式輸入法工具列的顯示時間從10秒改為3秒。

sudo cp /usr/share/glib-2.0/schemas/org.freedesktop.ibus.gschema.xml /usr/share/glib-2.0/schemas/org.freedesktop.ibus.gschema.xml.bak
sudo sed -i 's/10000/3000/g' /usr/share/glib-2.0/schemas/org.freedesktop.ibus.gschema.xml
sudo glib-compile-schemas /usr/share/glib-2.0/schemas



預設輸入法的起始狀態為輸入中文，假如對此感到困擾，
請按「系統設定值→文字輸入→＋→漢語→加入」，然後將「漢語」移到第一位，使預設輸入法為系統鍵盤配置（亦即英文）。


by xenomorph0525
```
