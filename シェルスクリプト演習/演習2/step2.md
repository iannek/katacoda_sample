演習回答例  
## 値によって出力が変わるシェルスクリプトの作成  
シェルスクリプトファイル"test.sh"をエディタから作成し、下記の内容を書き込む。  

```
#!/bin/bash
VAR=0

if [ $VAR = 0 ]; then
  echo "OK"
else
  echo "NG"
fi
```

test.shを実行する。  

`bash test.sh`{{execute}}

以下の内容がターミナル上に出力されていることを確認  

```
OK
```

`test.sh`内の`VAR=0`を`VAR=1`に書き換える。  

test.shを実行する。  

`bash test.sh`{{execute}}

以下の内容がターミナル上に出力されていることを確認  

```
NG
```

## コマンドの結果によって出力が変わるシェルスクリプトの作成  

シェルスクリプトファイル"test2.sh"をエディタから作成し、下記の内容を書き込む。  

```
#!/bin/bash
cat hoge.txt

if [ $? = 0 ]; then
  echo "OK"
else
  echo "NG"
fi
```

次のコマンドを実行して、hoge.txtを作成する。

`touch hoge.txt`{{execute}}

test2.shを実行する。  

`bash test2.sh`{{execute}}

以下の内容がターミナル上に出力されていることを確認  

```
OK
```

次のコマンドを実行して、hoge.txtを削除する。

`rm hoge.txt`{{execute}}

test2.shを実行する。  

`bash test.sh`{{execute}}

以下の内容がターミナル上に出力されていることを確認  

```
cat: hoge.txt: No such file or directory
NG
```
