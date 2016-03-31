
# 調校 aMule

原始來源：「[[教學] Ubuntu 14.04的調校](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=317196#forumpost317196P)」

```
＜二、優化篇＞


2.
把vorbis、flac、mp3檔的預設播放程式改為Totem，以免點擊時妨礙播放音樂中的rhythmbox。

sudo cp /etc/gnome/defaults.list /etc/gnome/defaults.list.bak
sudo sed -i 's/ogg=rhythmbox/ogg=totem/g ; s/flac=rhythmbox/flac=totem/g ; s/mp3=rhythmbox/mp3=totem/g ; s/mpeg=rhythmbox/mpeg=totem/g ; s/vorbis=rhythmbox/vorbis=totem/g' /etc/gnome/defaults.list



by xenomorph0525
```
