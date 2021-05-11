演習回答例  
## 四則演算を行うシェルスクリプト  
シェルスクリプトファイル"test.sh"をエディタから作成し、下記の内容を書き込む。  

```
#!/bin/bash
VAR1=5 #任意の整数
VAR2=3 #任意の整数

echo $VAR1 + $VAR2 = $(($VAR1 + $VAR2))
echo $VAR1 - $VAR2 = $(($VAR1 - $VAR2))
echo $VAR1 \* $VAR2 = $(($VAR1 * $VAR2))
echo $VAR1 / $VAR2 = $(($VAR1 / $VAR2))
# 小数点の計算を行いたい場合(例:awkを使用)
## echo $VAR1 / $VAR2 = `echo "$VAR1 $VAR2" | awk '{print $1 / $2}'`
# 小数点の計算を行いたい場合(例:bcを使用(本環境ではコマンド"apt install bc"を実行して事前にインストールする必要がある))
## echo $VAR1 / $VAR2 = `echo "scale=5; $VAR1 / $VAR2" | bc`
```

test.shを実行する。  

`bash test.sh`{{execute}}

計算結果が表示されることを確認。  
(以下は上記の例の場合の表示)

```
5 + 3 = 8
5 - 3 = 2
5 * 3 = 15
5 / 3 = 1
```

## 環境変数を読み取って四則演算を繰り返し行うシェルスクリプト  

exportコマンドを実行して環境変数をターミナルから設定する。  

`export ENVVAR1=5`{{execute}}

printenvコマンドを実行して環境変数が設定されたことを確認。  

`printenv`{{execute}}  

上記コマンドを実行すると、設定されている環境変数が全て出力される。  
環境変数の中に以下の表示があることを確認。  

```
ENVVAR1=1
```

備考…後の演習に出てくるパイプラインを使用すると、ENVVARだけを特定して表示することが出来る。  
その場合、下記のようなコマンドとなる。  

`printenv | grep ENVVAR1`{{execute}}  

シェルスクリプトファイル"test2.sh"をエディタから作成し、下記の内容を書き込む。  

```
#!/bin/bash
res=${ENVVAR1}

for ((i=1; i<11; i++))
do
  res=$(($res + $i))
done

echo result = $res
```

test2.shを実行する。  

`bash test2.sh`{{execute}}

計算結果が表示されることを確認。  
(以下は上記の例の場合の表示)

```
result = 56
```
