# 文字列出力

## 演習内容
シェルスクリプトを作成して実行する

## 演習手順
1. シェルスクリプトのファイル作成(空ファイル)
`touch test.sh`{{execute}}

作成したファイルを開く
test.sh{{open}}

2. シェルスクリプトの内容書き込み
`echo "Hello World" > test.sh`{{execute}}

開いているtest.shに以下内容が書き込まれていることを確認
```
Hello World
```

3. シェルスクリプトの実行 
`bash test.sh`{{execute}}

以下の内容がターミナル上に出力されていることを確認
```
Hello World
```

