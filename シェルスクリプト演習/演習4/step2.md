演習回答例  
## シェルスクリプトを作成してコメントを入れる  
シェルスクリプトファイル"test.sh"をエディタから作成し、下記の内容を書き込む。  

```
#!/bin/bash
cat hoge.txt # hoge.txtの中身を表示

# hoge.txtが存在する場合は"YES",存在しない場合は"NG"を出力
if [ $? = 0 ]; then
  #echo "OK"
  echo "YES"
else
  echo "NG"
fi
```

次のコマンドを実行して、hoge.txtを作成する。  

`touch hoge.txt`{{execute}}

test.shを実行する。  

`bash test.sh`{{execute}}

以下の内容がターミナル上に表示されていることを確認。  

```
YES
```
