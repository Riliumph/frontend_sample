# dockerとcomposeの注意点

`docker run`の場合はイメージ名を使う

```console
$ docker run -it --rm web_app-frontend
```

このイメージ名は`docker compose build`により、フォルダ名＋サービス名で構築される。  

> ただし、`image: <name>:<tag>`で任意に指定可能

この名前は外の世界から見るとそのままなのだが、`compose`の世界ではサービス名だけで参照される。

- `docker         run web_app-frontend`
- `docker compose run frontend`
