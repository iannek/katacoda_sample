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

echo $filename > filename.txt

if [ -s filename.txt ]; then
  echo "filename.txtを作成しました"
else
  echo "処理に失敗しました"
fi

```

test.shを実行する。  

`bash test.sh`{{execute}}

下記のように表示されることを確認。  

```
file_20210730.txt
filename.txtを作成しました
```

ファイルが存在しない場合の処理を確認するために、下記コマンドを実行して対象ファイルを削除する。  

`rm /tmp/file_20210730.txt`{{execute}}

test.shを実行する。  

`bash test.sh`{{execute}}

下記のように表示されることを確認。  

```
対象ファイルが存在しません
```

ファイル作成に失敗した場合の処理を確認するために、下記コマンドを実行して、対象ファイルを作成する。  

`touch /tmp/file_20210730.txt`{{execute}}

ファイル作成に失敗した場合を擬似的に再現するために、シェルスクリプト内に変更を加える。  
以下の通り、変更を加えたコードをtest.shに書き込む。

```
#!/bin/bash

filename=`ls /tmp | grep file_`
if [ -z $filename  ] ; then
  echo "対象ファイルが存在しません"
  exit 1
else
  echo $filename
fi

echo $filename > filename.txt

rm filename.txt ## 変更箇所。ここでファイルを削除をすることでファイル作成に失敗した場合を擬似的に再現

if [ -s filename.txt ]; then
  echo "filename.txtを作成しました"
else
  echo "処理に失敗しました"
fi
```

test.shを実行する。  

`bash test.sh`{{execute}}

下記のように表示されることを確認。  

```
file_20210730.txt
処理に失敗しました
```
