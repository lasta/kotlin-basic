# 変数
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

