演習回答例  
## ループ処理を行うシェルスクリプトを作成してバックグラウンドで実行  
シェルスクリプトファイル"test.sh"をエディタから作成し、下記の内容を書き込む。  

```
#!/bin/bash

while true
do
  echo "loop" >> loop.txt
  sleep 5
done

```

test.shをバックグラウンドで実行する。  

`bash test.sh &`{{execute}}

5秒ごとにloop.txtに"loop"が追記されていることをエディタからloop.txtを開いて確認する  

jobsコマンドを実行して、バックグラウンドで実行されていることとジョブ番号を確認する。  

`jobs`{{execute}}

jobsコマンド実行例  
```
[1]+  Running                 bash test.sh &
```

killコマンドを実行して、バックグラウンドで実行したシェルスクリプトを停止する。  

`kill %1`{{execute}}

再度jobsコマンドを実行して、何も表示されないことを確認する。  

再度、test.shをバックグラウンドで実行する。  

`bash test.sh &`{{execute}}

jobsコマンドを実行して、バックグラウンドで実行されていることとジョブ番号を確認する。  

`jobs`{{execute}}

jobsコマンド実行例  
```
[1]+  Running                 bash test.sh &
```

fgコマンドを使用してバックグラウンドジョブをフォアグラウンドに持ってくる。  

`fg 1`{{execute}}

フォアグラウンド実行されていることを確認したら、ctrl + c で停止する。