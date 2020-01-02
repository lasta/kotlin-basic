# 変数

## 変数
変数とはなにかを理解する前に、下記のコードをおさらいしましょう。

```kotlin:HelloWorld.kt
fun main() {
    println("Hello World!")
}
```

上記のコードを実行すると、 "Hello World!" と表示されます。

では、下記のコードはどうなるでしょうか?

```kotlin:HelloWorld.kt
fun main() {
    val helloWorld: String = "Hello World!"
    println(helloWorld)
}
```

最初のコードと同じように、 "Hello World!" と表示されます。
この `helloWorld` が変数です。

変数とは名前のついたデータの置き場所になります。
上記のコードでは、 `helloWorld` という名前の変数で、 `"Hello World!"` というデータの置き場所になっています。
そして 3 行目の `println(helloWorld)` にて変数 `helloWorld` を使用しています。

専門的には、 `helloWorld` という名前の変数を **宣言** し、 `"Hello World!"` という値 (データ) を **代入** し、
3行目で`helloWorld` という変数を **参照** している、と表現します。

{% hint style="info" %}
宣言 (declaration)

どのような変数を用いるのか明確に示すこと
{% endhint %}

{% hint style="info" %}
代入 (assignment)

宣言した変数に対し、値を関連付けること
{% endhint %}

{% hint style="info" %}
参照 (reference)

変数に代入した値を利用すること
{% endhint %}

{% hint style="tip" %}
初期化 (initialization)

ある変数に初めて代入を行うこと

変数を初期化しないで放置することは良くないとされています。
初期化されていない変数を誤って参照してしまう危険性があるためです。
(初期化していない、すなわち値が代入されていない変数を参照することは意味を成しません。)

Kotlin にて変数を初期化せずに放置することはできません。
どうしても初期化したくない場合は `lateinit` という特殊なキーワードが必要になります。
<!-- TODO: `lateinit` へのリンクを貼る -->
{% endhint %}

## 2つの変数宣言
Kotlin ではすでに登場している `val` とは別に、 `var` という変数を宣言するためのキーワードがあります。

`val` は変更不可能な変数、 `var` は変更可能な変数です。
具体例を用いて説明します。

```kotlin
fun main() {
    val helloWorld: String = "Hello World!"
    helloWorld = "Changed!"
    println(helloWorld)
}
```

> Error:(3, 5) Kotlin: Val cannot be reassigned
> (エラー: 3行目5文字目 Kotlin: val は再代入できません)

というエラーが出力され、実行できませんでした。
それでは、 `val` を `var` に変更してみましょう。

```kotlin
fun main() {
    var helloWorld: String = "Hello World!"
    helloWorld = "Changed!"
    println(helloWorld)
}
```

無事 "Changed!" と出力されました。
このように、変更が必要となる変数を宣言する場合は `var` を用いる必要があります。

{% hint style="tip" %}
Q. 全部 `var` で良いのでは?

A. 可能な限り `val` を用いるべき

プログラムはあとから誰かに読まれるものです。

`val` で変数を宣言すると、その値が変更されないことが保証されるため、プログラムの見通しがよくなります。

一方で `var` で宣言された変数は、もし変更されることがないとしても 「もしかしてあとから変更されるかも?」 と思いながら読み進められてしまいます。
また、本当は変更したくないのに誤って変更されてしまうかもしれません。

このような事態を避けるために、可能な限り変数は `val` で宣言するべきです。
{% endhint %}

{% hint style="info" %}
変更可能 (mutable) と 変更不可能 (immutable)

`var` で宣言された変数をミュータブル (mutable) な変数と呼びます。

`val` で宣言された変数をイミュータブル (immutable) な変数と呼びます。

mutable / immutable というワードは今後も出てくるため、覚えておいてください。
{% endhint %}
