演習回答例  
## 四則演算を行うシェルスクリプト  
シェルスクリプトファイル"test.sh"をエディタから作成し、下記の内容を書き込む。  

```
#!/bin/bash
VAR1=5 #任意の数値
VAR2=3 #任意の数値

echo $VAR1 + $VAR2 = $(($VAR1 + $VAR2))
echo $VAR1 - $VAR2 = $(($VAR1 - $VAR2))
echo $VAR1 \* $VAR2 = $(($VAR1 * $VAR2))
echo $VAR1 / $VAR2 = $(($VAR1 / $VAR2))  
# 少数計算を行いたい場合(例:awkを使用)
## echo $VAR1 / $VAR2 = `echo "$VAR1 $VAR2" | awk '{print $1 / $2}'`
# 少数計算を行いたい場合(例:bcを使用(本環境では事前にインストールが必要 "apt install bc"))
## echo $VAR1 / $VAR2 = `echo "scale=5; $VAR1 / $VAR2" | bc`
```

test.shを実行する。  

`bash test.sh`{{execute}}

計算結果が表示されることを確認する。  
(以下は上記の例の場合の表示)

```
5 + 3 = 8
5 - 3 = 2
5 * 3 = 15
5 / 3 = 1
```

## 環境変数を読み取って四則演算を繰り返し行うシェルスクリプト  

環境変数をターミナルから設定する場合  

`export ENVVAR1=5`{{execute}}

環境変数が設定されたかを確認する

`printenv | grep ENVVAR`{{execute}}  

上記コマンドの結果が以下のように表示されていることを確認する  

```
ENVVAR1=5
```

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

test.shを実行する。  

`bash test2.sh`{{execute}}

計算結果が表示されることを確認する。  
(以下は上記の例の場合の表示)

```
result = 60
```
