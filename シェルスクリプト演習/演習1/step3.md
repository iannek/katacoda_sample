演習回答例(コマンドでファイルを作成)  

## シェルスクリプトのファイル作成(touchコマンドを使用する場合)  

touchコマンドを使用して空ファイルを作成する。  

`touch test.sh`{{execute}}

作成したファイルを開く  
`test.sh`{{open}}

作成した空ファイルにシェルスクリプトの内容を書き込む。  

`echo '#!/bin/bash' >> test.sh`{{execute}}  
`echo 'echo "Hello World"' >> test.sh`{{execute}}

開いているtest.shに以下内容が書き込まれたことを確認。  

```
Hello World
```

## シェルスクリプトのファイル作成(viコマンドを使用する場合)  

viコマンドを使用してファイルを作成する。  

`vi test.sh`{{execute}}

viの入力モードを使って以下を書き込む。  

```
#!/bin/bash
echo "Hello World"
```

## シェルスクリプトの実行(bashで実行する場合)  

test.shを実行。  

`bash test.sh`{{execute}}

以下の内容がターミナル上に表示されていることを確認。  

```
Hello World
```

## シェルスクリプトの実行(実行権限をつけて実行する場合)

シェルスクリプトに実行権限を付与。  

`chmod 755 test.sh`{{execute}}

test.shを実行。  
`./test.sh`{{execute}}

以下の内容がターミナル上に表示されていることを確認。  

```
Hello World
```