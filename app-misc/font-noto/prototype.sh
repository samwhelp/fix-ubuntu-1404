#!/usr/bin/env bash

## 建立工作資料夾
mkdir temp -p
cd temp

## 下載
wget -c https://noto-website.storage.googleapis.com/pkgs/Noto-hinted.zip

## 刪除 Noto 資料夾 (若有的話)
rm ./Noto -rf

## 解壓縮
unzip Noto-hinted.zip -d Noto

## 移到系統資料夾
sudo mv Noto /usr/local/share/fonts

## 更改owner和group
sudo chown root:staff /usr/local/share/fonts/Noto -R

## 更改檔案權限
sudo chmod 644 /usr/local/share/fonts/Noto/*

## 更改資料夾權限
sudo chmod 755 /usr/local/share/fonts/Noto

## 更新字型暫存資料(安裝字型)
sudo fc-cache -fv

## 安裝設定檔
mkdir ~/.config/fontconfig/ -p
cp ./asset/fonts.conf ~/.config/fontconfig/fonts.conf

## 上面的fonts.conf可以利用下面的網址產生，只要更改順序，或是自己編輯。
## http://wenq.org/cloud/fcdesigner_local.html

## 參考文章
## http://samwhelp.github.io/blog/read/linux/ubuntu/font/font-noto/
## http://samwhelp.github.io/book-ubuntu-basic-skill/book/content/font/font-noto.html
