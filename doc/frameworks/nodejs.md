# Node.jsの使い方

Node.jsは、JavaScriptの実行エンジンであるV8 JavaScriptエンジン上に構築されたJavaScript実行環境である。  
本来、ブラウザが解釈して実行を行うJavaScriptをローカルでも実行できるようになった。
これにより、フロントエンド専用だったJavaScriptでバックエンドを構築できるようになった。

## パッケージマネージャ

Node.jsには有名なパッケージマネージャがある

- npm 2009年にリリースされた。
- [npx](https://github.com/npm/npx) npm5.2.0で同梱された
- yarn 2016年にリリースされた。

- 参考
  - [npmとnpx。なにが違う？](https://qiita.com/sivertigo/items/622550c5d8ec991e59a6)
  - [npm vs npx — What’s the Difference?](https://www.freecodecamp.org/news/npm-vs-npx-whats-the-difference/)

### npm

Node.jsで外部パッケージをインストールして使うためのマネージャ。  
`package.json`を読み込んで`npm`のリポジトリを取りに行く。

ローカルインストールした場合、必ず`./node_modules/.bin`配下にコマンドがインストールされる模様。  
グローバルインストールした場合、`/usr/local/bin`にインストールされる。（環境依存）

CLIツールを落とすときに、使うために`package.json`に定義を書く面倒さはある。

### npx

`npm`のバージョン5.2.0からプリインストールされているコマンド。  
`npm install -g npx`でも入れることができる。

`npm`は`package.json`から対象コマンドを探す仕様の都合上`package.json`をメンテナンスする必要がある。
対して、`npx`はインストールパスから勝手にパスを調べてコマンドを実行してくれる親切設計である。

加えて、`npx`はコマンドを遠隔実行できる。  
インストールすることもなく、gitからコマンドを探してきてメモリに展開して実行する。  
トラフィックは食うが、イメージ容量を節約することができる。

### yarn

npmと互換性があり、`package.json`のパース機能が備わっている。  

インストール時にチェックサムを用いてパッケージの不正を検証するためnpmよりセキュリティが高い。

バージョン管理にも優れていて、`yarn install`後に`yarn.lock`ファイルが作成される。  
このファイルには依存関係があるファイル群すべてのバージョンが明確に記載される。  
これにより、パッケージの再インストール時にもバージョン整合性を保つことができる。
