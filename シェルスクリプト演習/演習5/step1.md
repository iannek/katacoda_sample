## 演習手順

1) 以下のシェルスクリプトのファイルを作成する。  

```
#!/bin/bash
cat hoge.txt

if [ $? = 0 ]; then
  echo "OK"
else
  echo "NG"
fi
```

2) 作成したシェルスクリプトに対して次の変更を加えて実行する。  
  - hoge.txtが存在しない場合、`cat hoge.txt`の結果をerror.txtに出力する
  - `echo "OK"`　または `echo "NG"`の結果を result.txtに出力する