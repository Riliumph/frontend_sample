# frontend_sample

## 使い方

### ビルド方法

```console
$ docker compose build
```

### プロジェクト作成

dockerのオプションによりDockerfileのCMDを上書きしてプロジェクト作成を行う。  
プロジェクトを作成する方法は以下の通り。どちらかを選ぶ

- `npx create-react-app ${PJ_NAME} --template typescript`
- `yarn create react-app ${PJ_NAME} --template typescript`

```console
$ export IMG_NAME="frontend"
$ export PJ_NAME="frontend"
$ docker compose run --rm frontend sh -c "yarn upgrade --latest && yarn create react-app web_ui --template typescript | tee yarn.log"
yarn add v1.22.17
info No lockfile found.
[1/4] Resolving packages...
（略）
[2/4] Fetching packages...
```

### 実行

```console
$ docker compose up -d
```

`http://localhot:8000`にアクセスする。

## 参考

- [【Docker】React+TypeScriptのDocker環境を構築する](https://zenn.dev/wakkunn/articles/2fa2943d1fc58f)
