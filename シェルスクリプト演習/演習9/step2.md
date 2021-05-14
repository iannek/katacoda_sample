演習回答例  
## 複数処理結果を連携した処理を行うシェルスクリプト  
シェルスクリプトファイル"test.sh"をエディタから作成し、下記の内容を書き込む。  

```
#!/bin/bash

filename=`ls /tmp | grep file_`
if [ -z $filename  ] ; then
  echo "対象ファイルが存在しません"
  exit 1
else
  echo $filename
fi
```

test.shを実行する。  

`bash test.sh`{{execute}}

下記のように表示されることを確認。  

```
file_20210730.txt
```

ファイルが存在しない場合の処理を確認するために、下記コマンドを実行して対象ファイルを削除する。  

`rm /tmp/file_20210730.txt`{{execute}}

test.shを実行する。  

`bash test.sh`{{execute}}

下記のように表示されることを確認。  

```
対象ファイルが存在しません
```