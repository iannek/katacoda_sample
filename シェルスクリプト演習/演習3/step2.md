演習回答例  
## 一定回数ループを繰り返すシェルスクリプトの作成  
シェルスクリプトファイル"test.sh"をエディタから作成し、下記の内容を書き込む。  

```
#!/bin/bash

for ((i=0; i<6; i+1))
do
  echo $i
done
```

test.shを実行する。  

`bash test.sh`{{execute}}

以下の内容がターミナル上に出力されていることを確認  

```
1
2
3
4
5
```

## 無限ループのシェルスクリプトの作成  

シェルスクリプトファイル"test2.sh"をエディタから作成し、下記の内容を書き込む。  

```
#!/bin/bash

while true
do
  echo "loop"
  sleep 3
done
```

test2.shを実行する。  

`bash test2.sh`{{execute}}

以下の内容が3秒ごとにターミナル上に出力されていることを確認  

```
loop
```

次のキーを押して、シェルスクリプトを停止する。

ctrl + c

## 特定条件が満たされるまでループを繰り返すシェルスクリプトの作成

シェルスクリプトファイル"test3.sh"をエディタから作成し、下記の内容を書き込む。  

```
#!/bin/bash

while true
do
  cat hoge.txt
  if [ $? = 0 ]; then
    echo "OK"
    break
  else
    echo "NG"
    sleep 3
    continue
  fi
done
```

test3.shを実行する。  

`bash test3.sh`{{execute}}

hoge.txtが存在しない場合は、以下の内容が3秒ごとにターミナル上に出力されていることを確認  

```
cat: hoge.txt: No such file or directory
NG
```

hoge.txtが存在する場合は、以下の内容がターミナル上に出力されループが終了することを確認

```
OK
```

処理中にhoge.txtを作成した場合は下記のようになりループが終了する

```
cat: hoge.txt: No such file or directory
NG
cat: hoge.txt: No such file or directory
NG
OK
```
