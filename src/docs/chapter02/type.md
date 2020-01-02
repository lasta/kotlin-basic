# 型
[変数](variable.md) にて、以下のコードの `val` は変数宣言のキーワード、 `helloWorld` は変数、 `=` は代入演算子、
`"Hello World!"` は値であるという説明をしました。

```kotlin:HelloWorld.kt
fun main() {
    val helloWorld: String = "Hello World!"
    println(helloWorld)
}
```

残るは `:` と `String` です。

`String` は `helloWorld` の型の名前、 `:` は変数名と型名を区切る文字です。
`HelloWorld.kt` の2行目についてまとめると、

* `val` : 変更不可能な変数宣言のキーワード
* `helloWorld` : 変数名
* `:` : 変数名と型定義の区切り文字
* `String` : 変数 `helloWorld` の型定義
* `=` : 代入演算子
* `"Hello World!"` : `String` 型の値

となります。

型とは、変数に格納するデータの種類です。
`String` 型は文字列型とも呼ばれ、その名の通り文字列 (複数の文字) を扱うことができる型です。

## 代表的な型 (Kotlin の組み込み型)
Kotlin では予めいくつかの型が定義されています。
そのうち、一般的によく使われるものを紹介します。

| 型名    | 説明                                            | 例                     |
|---------|-------------------------------------------------|------------------------|
| String  | 文字列 (テキスト)                               | "Hello World!"         |
| Int     | 整数値 (32bit 符号つき整数)                     | 42                     |
| Double  | 小数値 (64bit 符号つき浮動小数点数)             | 3.14159265             |
| Char    | 1文字                                           | 'A'                    |
| Boolean | 真偽値                                          | true                   |
| List    | 同じ型の要素を順序付けて複数並べたもの (リスト) | 1, 4, 9, 9, 1          |
| Set     | 同じ型の要素を重複なく集めたもの (集合)         | 1, 4, 9                |
| Map     | キーを値にマッピングしたものを集めたもの        | "one" to 1, "two" to 2 |

それぞれの型については、今後解説します。
<!-- TODO: 各型の詳細を解説しているページへリンク -->

## 型エラー
変数に値を代入する際に、変数の型と値の型が合わないことを **型エラー** と呼びます。
具体例を用いて説明します。

```kotlin
fun main() {
  val helloWorld: String = 42
  println(helloWorld)
}
```

> error: the integer literal does not conform to the expected type String
>
> (エラー: 整数リテラルは、期待されている型 String (文字列型) と適合しません)

変数 `helloWorld` の型 `String` と代入しようとした値 `42` の型 `Int` が合わないため、型エラーが発生しました。

どうしても `42` という値を代入したい場合は、変数 `helloWorld` の型を `String` 型から `Int` 型に変更します。


```kotlin
fun main() {
  val helloWorld: Int = 42
  println(helloWorld)
}
```

これを実行すると、 `"Hello World!"` ではなく `42` が出力されます。

{% hint style="tip" %}
リテラル

ソースコード上に直接埋め込まれた値のこと

`42` は整数型のリテラルのため **整数リテラル** 、 `"Hello World!"` は文字列型のリテラルのため **文字列リテラル** と呼ばれます。
{% endhint %}

## 型推論
Kotlin は型推論 (type inference) と呼ばれる機能を持ちます。
型推論とは、文字通り型を推論することです。

これまでは変数 `helloWorld` を宣言する際に必ず型 `String` を指定してきました。
ですが、変数 `helloWorld` に代入する値は文字列リテラル `"Hello World!"` です。

変数に格納される値の型が予め推測が可能な場合は、型の指定を省略することができます。

```kotlin
fun main() {
    val helloWorld = "Hello World!"
    println(helloWorld)
}
```

型名の指定を省略できる場合は、 IntellIJ IDEA 変数の型名がグレーアウトさせ、 "Explicitly given type is redundant here" (ここでは明示的な型の付与は余分)
と教えてくれます。

余分とされている型名にカーソルをあわせ Option + Enter (Mac) または Alt + Enter (Windows) を押し、 "Remove explicit type specification" (明示的な型の指定の除去)
を選択することで、余分な型の指定を除去できます。

{% hint style="tip" %}
優秀な Option + Enter / Alt + Enter

IntelliJ IDEA はソースコードに対し様々な意見を提示してくれます。
冗長な型情報の付与だけではなく、 typo (誤字脱字) や変数宣言キーワードの変更、その他たくさんの修正を提案してくれます。

多くの場合は提案に従うとより良いソースコードになりますが、偶に期待しない変更をされる場合があります。
何を提案されているのか理解した上で、修正する / しないを判断しましょう。
{% endhint %}
