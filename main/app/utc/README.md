
# 調校 utc

原始來源：「[[教學] Ubuntu 14.04的調校](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=317196#forumpost317196P)」

```
＜二、優化篇＞

3.
關閉UTC，以免Ubuntu與Windows之間有時差。

sudo sed -i 's/UTC=yes/UTC=no/g' /etc/default/rcS

by xenomorph0525
```
