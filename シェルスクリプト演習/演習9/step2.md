演習回答例  
## 複数処理結果を連携した処理を行うシェルスクリプト  
シェルスクリプトファイル"test.sh"をエディタから作成し、下記の内容を書き込む。  

```
#!/bin/bash

hile read filename
do
  touch filename
done < filelist.txt

```

test.shを実行する。  

`bash test.sh`{{execute}}`
