演習回答例  
## 一定回数ループを繰り返すシェルスクリプトの作成  
シェルスクリプトファイル"test.sh"をエディタから作成し、下記の内容を書き込む。  

```
#!/bin/bash

for ((i=0; i<5; i++))
do
  echo $i
done
```

test.shを実行する。  

`bash test.sh`{{execute}}

以下の内容がターミナル上に表示されていることを確認。  

```
0
1
2
3
4
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

以下の内容が3秒ごとにターミナル上に表示されていることを確認。  

```
loop
```

ターミナル上で次のキーを押して、シェルスクリプトを停止する。

`ctrl + c`

## 特定条件が満たされるまでループを繰り返すシェルスクリプトの作成

シェルスクリプトファイル"test3.sh"をエディタから作成し、下記の内容を書き込む。  

```
#!/bin/bash

FILE="hoge.txt"

while true
do
  if [ -e $FILE ]; then
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

hoge.txtが存在しない場合は、以下の内容が3秒ごとにターミナル上に表示されていることを確認。  

```
NG
```

hoge.txtが存在する場合は、以下の内容がターミナル上に表示されループが終了することを確認。

```
OK
```

処理中にhoge.txtを作成した場合は下記のようになりループが終了することを確認。

```
NG
NG ←次の処理が実行される前にファイルhoge.txtを作成
OK
```
