# Ubuntu 1404 調校

## 緣起

這裡面的「script」，是用來調校「Ubuntu 14.04」。

是根據這篇「[[教學] Ubuntu 14.04的調校](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=317196#forumpost317196)」，所整理出來的。

發布在該篇的「[討論串](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=345076#forumpost345076)」。


## 前置作業

安裝 git, make

``` sh
$ sudo apt-get install git make
```

clone

``` sh
$ git clone https://github.com/samwhelp/fix-ubuntu-1404.git ~/app/fix-ubuntu-1404
```

## 使用說明

### 全部安裝

切換到「~/app/fix-ubuntu-1404/main」這個資料夾。

``` sh
$ cd ~/app/fix-ubuntu-1404/main
```

執行

``` sh
$ make auto
```

就可以執行所有的安裝步驟。

因為「script」有使用到「sudo」，所以會詢問你目前帳號的「密碼」。

跟下面一個「make install」的區格，是因為下面的「make install」在安裝套件，會再度詢問確認，是否確定安裝，
這個只有一開始確認，過程中就不詢問確認了。


### 全部安裝

切換到「~/app/fix-ubuntu-1404/main」這個資料夾。

``` sh
$ cd ~/app/fix-ubuntu-1404/main
```

執行

``` sh
$ make install
```

就可以執行所有的安裝步驟。

因為「script」有使用到「sudo」，所以會詢問你目前帳號的「密碼」。


### 個別安裝

只要到「app」底下的個別資料夾，執行「make install」就行了。

以安裝「radiotray」為例。

切換到「~/app/fix-ubuntu-1404/main/app/radiotray」這個資料夾。

``` sh
$ cd ~/app/fix-ubuntu-1404/main/app/radiotray
```

執行

``` sh
$ make install
```


### 只有安裝全部套件

切換到「~/app/fix-ubuntu-1404/main/」這個資料夾。

``` sh
$ cd ~/app/fix-ubuntu-1404/main/
```

執行

``` sh
$ make apt-install
```

這個動作只會安裝「app/$package/etc/package.list」裡面所列的套件。

## 進階用法

### 指定安裝

切換到「~/app/fix-ubuntu-1404/main/」這個資料夾。

``` sh
$ cd ~/app/fix-ubuntu-1404/main/
```

執行

``` sh
$ make select
```

會產生「itf/select.list」這個檔，裡面的內容是「app」底下的資料夾名稱列表。

然後你可以編輯「itf/select.list」

``` sh
$ vi itf/select.list
```

把不要安裝的刪除，在該行「dd」，就會刪除該行

再來執行

``` sh
$ make select-install
```

就會依據「itf/select.list」列的，執行「app/$package/bin/install.sh」

等同「make install」的自選版本。

## LICENSE

* MIT
