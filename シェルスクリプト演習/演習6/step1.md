## 演習手順

1) 以下の計算処理を行うシェルスクリプトのファイル(test.sh)を作成・実行する。  
  - ２つのシェル変数VAR1,VAR2を設定し、それぞれに任意の整数を与える。
  - VAR1,VAR2を用いて以下の計算を行い、結果をターミナル上に表示する。
    - VAR1 + VAR2
    - VAR1 - VAR2
    - VAR1 * VAR2
    - VAR1 / VAR2
  - ※VAR1,VAR2に入れる値によってはエラーが発生することに注意。
  - ※除算では少数点以下の表示は不要。(興味のある人は調べてやってみると良い)


2) 以下の計算処理を行うシェルスクリプトのファイル(test2.sh)を作成する。  
  - 環境変数ENVVAR1を読み取って以下の計算を行い、結果をターミナル上に表示する。(環境変数ENVVAR1はターミナルでコマンドを実行して設定する。値は任意の整数とする。)
    - ENVVAR1に1～10までの数字を足す。(例：ENVVARが1の場合、答えは56になる。)