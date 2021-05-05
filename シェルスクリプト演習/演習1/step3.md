## 演習回答例(コマンドでファイルを作成して実行)
1. シェルスクリプトのファイル作成(空ファイル)  

`touch test.sh`{{execute}}  

作成したファイルを開く  
`test.sh`{{open}}

2. シェルスクリプトの内容書き込み  

`echo '#!/bin/bash' >> test.sh`{{execute}}  
`echo 'echo "Hello World"' >> test.sh`{{execute}}

開いているtest.shに以下内容が書き込まれたことを確認  

```
Hello World
```

3. シェルスクリプトの実行  

`bash test.sh`{{execute}}

以下の内容がターミナル上に出力されていることを確認  

```
Hello World
```

