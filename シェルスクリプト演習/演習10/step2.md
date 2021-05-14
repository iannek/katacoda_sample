演習回答例  
## ループ処理を行うシェルスクリプトを作成してバックグラウンドで実行  
シェルスクリプトファイル"test.sh"をエディタから作成し、下記の内容を書き込む。  

```
#!/bin/bash

while read filename
do
  touch $filename 
  echo $filenameを作成しました
done < /tmp/filelist.txt

```

test.shをバックグラウンドで実行する。  

`bash test.sh`{{execute}}

以下の通り表示されること、また読み取ったファイル名の空ファイルが作成されていることを確認。

```
aaa.txtを作成しました
bbb.txtを作成しました
ccc.txtを作成しました
```