演習回答例  
## シェルスクリプトを作成して標準出力、標準エラー出力を入れる  
シェルスクリプトファイル"test.sh"をエディタから作成し、下記の内容を書き込む。  

```
#!/bin/bash
cat hoge.txt 2> error.txt

if [ $? = 0 ]; then
  echo "OK" > result.txt
else
  echo "NG" > result.txt
fi
```

次のコマンドを実行して、hoge.txtを作成する。  

`touch hoge.txt`{{execute}}

test.shを実行する。  

`bash test.sh`{{execute}}

result.txtが作成され、"OK"が記載されていることを確認。  

次のコマンドを実行して、hoge.txtを削除する。  

`rm hoge.txt`{{execute}}

test.shを実行する。  

`bash test.sh`{{execute}}

error.txtが作成され、"cat: hoge.txt: No such file or directory"が記載されていることを確認。  
result.txtが作成され、"NG"が記載されていることを確認。  