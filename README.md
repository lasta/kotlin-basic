# Kotlin 入門
このドキュメントは、プログラミング初学者向けに作成した Kotlin 入門書です。
Java 等の他のプログラミング言語の経験者で Kotlin の勉強を始める方は、 [Kotlin 公式リファレンス][kotlin reference] や
[Kotlin koans][kotlin koans] を用いて学習することをおすすめします。

[kotlin reference]: https://kotlinlang.org/docs/reference/
[kotlin koans]: https://kotlinlang.org/docs/tutorials/koans.html

## このドキュメントの環境構築
このドキュメントを作成する際の環境構築です。
Kotlin を勉強される方は対応不要です。
Kotlin 自体の環境構築については [こちらのページ](environment.md) を参照してください。

このドキュメントは [GitBook][gitbook] を用いて作成しています。

### Mac
1. [Homebrew][homebrew] をインストール
```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade
```
2. [nodebrew][nodebrew] のインストール
```sh
brew install nodebrew
echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```
3. [node.js][node.js] のインストール
```sh
mkdir -p ~/.nodebrew/src
nodebrew install-binary latest
nodebrew use latest
```
4. [gitbook-cli][gitbook-cli] のインストール
```sh
npm install --global gitbook-cli
```

### 動作確認
* ドキュメントのビルド
```sh
./build.sh
```
* ドキュメントのビルドと Web サーバの起動
```sh
./serve.sh
```
  * http://localhost:4000/ からアクセスできます


[homebrew]: https://brew.sh/index_ja
[nodebrew]: https://github.com/hokaccha/nodebrew
[node.js]: https://nodejs.org/
[gitbook-cli]: https://github.com/GitbookIO/gitbook-cli
[gitbook]: https://www.gitbook.com
