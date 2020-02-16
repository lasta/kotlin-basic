# if 式
if 式はその名の通り、「もし A ならば」を表現する制御構文です。

<!-- toc -->

## if 式の基本構文
基本的な書式は下記のとおりです。

```kotlin
if (/* 条件式 (Boolean 型) */) {
    /* 条件式が true だった場合にする処理 */
}
```

文字列 `Hello World!` の文字数が 10 文字以上だった場合に文章を表示するような if 式を書いてみます。

この場合、 条件式は「 `Hello World!` の文字数が10文字以上」、処理は「文章を表示する」になります。

```kotlin
val helloWorld = "Hello World!" // 12 文字

if (helloWorld.length >= 10) {
    println("文字列 $helloWorld は 10 文字以上あります")
}
```

`Hello World!` は 12 文字 (10文字以上) のため、画面に 「文字列 Hello World! は 10 文字以上あります」と出力されます。

## else 句
「もし A ならば a 、 *さもなくば b* 」を表現する場合は `else` 句を用います。

```kotlin
if (/*条件式 (Boolean 型)*/) {
    /* 条件式が true だった場合にする処理 */
} else {
    /* 条件式が false だった場合にする処理 */
}
```

上述の例と同様に `Hello World!` の文字数 (12 文字) を条件にしてみます。

今回は文字数が 20 文字以上だった場合と *そうではない場合* で画面に出力される文章が変わります。

```kotlin
val helloWorld = "Hello World!" // 12 文字

if (helloWorld.length >= 20) {
    println("文字列 $helloWorld は 20 文字以上あります")
} else {
    println("文字列 $helloWorld は 20 文字未満です")
}
```

`Hello World!` は 12 文字のため、 else 句の処理である「文字列 Hello World! は 20 文字未満です」が画面に出力されます。

## 連続した if-else 式
`else` 句にさらに if 式を書く事ができます。

これにより、「もし A ならば a、 B ならば b、 さもなくば c」のような表現ができます。

```kotlin
val helloWorld = "Hello World!" // 12 文字

if (helloWorld.length <= 5) {
    println("文字列 $helloWorld は 5 文字以下です")
} else if (helloWorld.length <= 10) {
    println("文字列 $helloWorld は 10 文字以下です")
} else {
    println("文字列 $helloWorld は 11 文字以上です")
}
```

`Hello World!` は 10 文字よりも長いため、「文字列 Hello World! は 11 文字以上です」が画面に出力されます。

## if は式である
Kotlin では if は *式* なので、何らかの値を返すことができます。
返却値は各ブロックで最後に評価された値 (最後の行) になります。

```kotlin
val number = -5

val sign = if (number < 0) {
    "negative"
} else if (number > 0) {
    "positive"
} else {
    "zero"
}

println("$number is $sign") // -5 is negative
```

上記の例では、 `number` は負の数です。
そのため、最初の if 式の条件 `number < 0` が `true` になるため、 `sign` には `"negative"` が代入されます。

{% hint style="tip" %}
Kotlin には三項演算子がない

Java や C 系の言語を学んだ人ならば *三項演算子* を知っているかもしれません。
三項演算子とは「条件」「`true` の場合の処理」「`false` の場合の処理」の 3 つの項からなる演算子です。

三項演算子を使わない場合は下記になります。

```java:Main.java
public class Main {
    public static void main(String[] args) {
        final int number = -5;
        String sign;
        if (number < 0) {
            sign = "negative";
        } else if (number > 0) {
            sign = "positive";
        } else {
            sign = "zero";
        }
        System.out.println(sign);
    }
}
```

Java では if は式ではなく文のため、値を返す事ができません。
そのため、あらかじめ変数 `sign` を用意しておき、 `if` 文のブロック内で代入します。

変数を初期化せずに放置するめことを嫌う場合、下記のように三項演算子を用いて書きます。

```java:Main.java
public class Main {
    public static void main(String[] args){
        final int number = -5;
        final String sign = number < 0 ? "negative" :
                number > 0 ? "positive" : "zero";
        System.out.println(sign); // negative
    }
}
```

Kotlin では if が式であるため、三項演算子 `? :` を用いずに表現可能です。
上記の Java プログラムを Kotlin で表現すると、前述のコードになります。

```kotlin:Main.kt
fun main() {
    val number = -5

    val sign = if (number < 0) {
        "negative"
    } else if (number > 0) {
        "positive"
    } else {
        "zero"
    }

    println(sign)
}
```
{% endhint %}


### パズル
if は式のため、値を返すことができます。
たとえば `if (number < 0) { "negative" }` の型は `String` になります。

では、下記のコードの実行結果はどうなるでしょうか。

```kotlin
val number = -5

val sign = if (number < 0) {
    "negative"
} else if (number > 0) {
    "positive"
} else {
    "zero"
}.toUpperCase()

println(sign) // ???
```

まず、 `number` は負の数のため、 `"negative"` が採用されることはこれまでから分かるかと思います。
そして大文字化 (`.toUpperCase()`) しているため、画面には `NEGATIVE` が出力されそうですが、実際には小文字 `negative` が出力されます。

なぜこのようなことが起こるのでしようか。

上記のコードは、下記のように解釈されます。

```kotlin
val number = -5

val sign =
        if (number < 0) {
            "negative"
        } else /* ここから 2 つ目の if 式 */ if (number > 0) {
            "positive"
        } else {
            "zero"
        }.toUpperCase()

println(sign)
```

`else` の後の if 式は前の if 式とは無関係になります。
そのため、 `"positive"` と `"zero"` は大文字になりますが、 `"negative"` のみ小文字のままになります。

`"negative"` の場合も大文字にしたい場合は下記のように記述する必要があります。

```kotlin
val number = -5

val sign = (
        if (number < 0) {
            "negative"
        } else if (number > 0) {
            "positive"
        } else {
            "zero"
        }).toUpperCase()

println(sign)
```

## 色々な書き方
if 式の処理が 1 行の場合、中括弧 `{ }` を省略することができます。

```kotlin
// { } を省略する前
val number = -5

val sign = if (number < 0) {
    "negative"
} else if (number > 0) {
    "positive"
} else {
    "zero"
}

println("$number is $sign") // -5 is negative
```

```kotlin
// { } を省略した場合
val number = -5

val sign = if (number < 0)
    "negative"
else if (number > 0)
    "positive"
else
    "zero"

println("$number is $sign") // -5 is negative
```

さらに、改行するかどうかもある程度自由になります。

```kotlin
// { } と改行を省略
val number = -5

val sign = if (number < 0) "negative"
else if (number > 0) "positive"
else "zero"

println("$number is $sign") // -5 is negative
```

```kotlin
// さらに改行を省略
val number = -5

val sign = if (number < 0) "negative" else if (number > 0) "positive" else "zero"
println("$number is $sign") // -5 is negative
```

これまでの例の中で一番読みやすいコードはどれでしょうか?

「読みやすさ」は人それぞれ変わりえますが、 Kotlin では多くの場合は中括弧 `{ }` を省略しないべきであるとされています。
そのため処理が 1 行であっても、基本的には中括弧 `{ }` を省略しないようにしましょう。
