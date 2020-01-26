# Kotlin 入門
このドキュメントは、プログラミング初学者向けに作成した Kotlin 入門書です。
Java 等の他のプログラミング言語の経験者で Kotlin の勉強を始める方は、[Kotlin 公式リファレンス][kotlin reference] や
[Kotlin koans][kotlin koans] を用いて学習することをおすすめします。

[kotlin reference]: https://kotlinlang.org/docs/reference/
[kotlin koans]: https://kotlinlang.org/docs/tutorials/koans.html

## [Kotlin](https://kotlinlang.org/) について
Java、Ruby、Python などのプログラミング言語による開発環境の開発および販売をしている [JetBrains 社](https://www.jetbrains.com/)
によって開発されたプログラミング言語です。
2011 年に発表され、2020年1月1日現在の最新版は [1.3.61](https://blog.jetbrains.com/kotlin/2019/11/kotlin-1-3-60-released/)
になります。
2020 年春頃には Kotlin 1.4 のリリースも予定されており、現在も活発に開発されているプログラミング言語です。

2019年5月7日に Google は Android アプリケーション開発の推奨言語にすると発表しました。
そのため Kotlin は Android アプリケーション開発に用いられることが多いですが、ウェブアプリケーションやサーバサイドアプリケーション等、
様々な用途で用いることができます。

主な用途として、 [下記の4つが紹介されています](https://kotlinlang.org/)。

* [Kotlin/JVM](https://kotlinlang.org/docs/reference/server-overview.html)
    * Java 仮想マシン上で稼働するサーバサイドアプリケーション開発 (Kotlin for Server-side)
* [Android](https://kotlinlang.org/docs/reference/android-overview.html)
    * Android アプリケーションの開発
* [Kotlin/JS](https://kotlinlang.org/docs/reference/js-overview.html)
    * ウェブアプリケーションの開発 (Kotlin Javascript)
* [Kotlin/Native](https://kotlinlang.org/docs/reference/native-overview.html)
    * ネイティブアプリケーション (他のランタイムや仮想環境が不要)
        * iOS
        * Mac
        * Android
        * Windows
        * Linux
        * WebAssembly

この資料では主に Java 仮想マシン上で稼働する Kotlin (Kotlin/JVM) を扱いますが、他の用途でも必ず必要になる知識になります。

## 開発環境の構築
Kotlin を主に開発している JetBrains 社は開発環境の開発及び販売もしています。
[Eclipse](https://www.eclipse.org/) などの IDE (統合開発環境) 、 Emacs や Vim などのテキストエディタでも開発できますが、
JetBrains 社製の IDE である [IntelliJ IDEA](https://www.jetbrains.com/ja-jp/idea/) を用いることを強く推奨します。

IntelliJ IDEA には 3 つのエディションがあります。

* Ultimate
    * 有償
        * 個人で購入する場合と法人経費で購入する場合で金額が異なるため注意
    * ウェブアプリケーションやデータベース用ツールを始め、すべての機能が揃っている
* Community
    * 無償
        * 商用利用OK
    * Kotlin や Java 等での開発で必要なものの基本的なものが揃っている
* Education
    * 無償
        * 教育目的、非商用目的（学術研究を含む）のみ

本資料内のソースコードはどのエディションでも実行およびデバッグが可能です。
(Ultimate エディションで作成しているため一部見た目が異なる場合があります。)

IntelliJ IDEA のダウンロードは [こちら](https://www.jetbrains.com/ja-jp/idea/download/) からできます。
使用しているコンピュータの OS に合わせて適切なものをダウンロードし、インストールしてください。

