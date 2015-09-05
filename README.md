# Ubuntu 1404 調校

## 緣起

這裡面的Script，是用來調校「Ubutu 14.04」。

是根據這篇「[[教學] Ubuntu 14.04的調校](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=317196#forumpost317196)」，所整理出來的。

發布在該篇的「[討論串](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=345076#forumpost345076)」。


## 前置作業

安裝 git

``` sh
$ sudo apt-get install git
```

clone

``` sh
$ git clone https://github.com/samwhelp/fix-ubuntu-1404.git ~/App/Fix
```

## 用法



### 全部安裝

切換到「~/App/Fix」這個資料夾。

``` sh
$ cd ~/App/Fix
```

執行「run.sh」，就可以執行所有的安裝步驟。

``` sh
$ ./run.sh
```

或是不用切換路徑，直接執行「~/App/Fix/run.sh」，一樣可行。

``` sh
$ ~/App/Fix/run.sh
```

因為「Script」有使用到「Sudo」，所以會詢問你目前帳號的「密碼」。


### 個別安裝

只要到「app」底下的個別資料夾，執行「run.sh」就行了。
以安裝「radiotray」為例。

切換到「~/App/Fix/app/radiotray」這個資料夾。

``` sh
$ cd ~/App/Fix/app/radiotray
```

執行「run.sh」。

``` sh
$ ./run.sh
```

或是不用切換路徑，直接執行「~/App/Fix/app/radiotray/run.sh」，一樣可行。

``` sh
$ ~/App/Fix/app/radiotray/run.sh
```

### 只有安裝全部套件

切換到「~/App/Fix」這個資料夾。

``` sh
$ cd ~/App/Fix
```

執行「install.sh」。這個動作只會安裝「app/$package/config/package.list」裡面所列的套件。

``` sh
$ ./install.sh
```

或是不用切換路徑，直接執行「~/App/Fix/install.sh」，一樣可行。

``` sh
$ ~/App/Fix/install.sh
```

## 進階用法

### 指定安裝

切換到「~/App/Fix」這個資料夾。

``` sh
$ cd ~/App/Fix
```

執行「allow.create-list.sh」，產生「tmp/allow.list」這個檔。

``` sh
$ ./allow.create-list.sh
```

編輯「tmp/allow.list」，刪除不要安裝的。

```
$ vi ./tmp/allow.list
```

執行「allow.run.sh」，會根據「tmp/allow.list」這個檔所列的來執行。

``` sh
$ ./allow.run.sh
```


## LICENSE

* MIT
