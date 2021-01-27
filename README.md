# build
docker image build -t katacoda .

# 起動
docker run -it --rm --name katacoda  -v $(pwd):/workspace katacoda /bin/bash

# 参考
[[入門]誰でも簡単にできるKatacodaで学習コンテンツを公開するまで](https://qiita.com/comefigo/items/53574476a2c9bec77a4c)