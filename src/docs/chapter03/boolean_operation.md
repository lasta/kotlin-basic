# 真偽値の演算
論理演算を行う事ができます。
また、真偽値型で結果を返却する演算が多数存在します。

## 論理演算
### AND 演算子 `&&`
2 つの真偽値型の値がともに `true` の場合のみ `true` を返却します。
`&&` 演算子

```kotlin
val t: Boolean = true
val f: Boolean = false
println(t && t) // true
println(t && f) // false
println(f && t) // false
println(f && f) // false
```

{% hint style="tip" %}
`&&` 演算子と `and` 演算子の違い

`&&` 演算子とよく似た演算子として `and` 演算子があります。

`&&` 演算子は 1 つ目の値が `false` の場合、 2 つ目の値を確認せずに `false` を返却します。
これを短絡評価といいます。

一方で `and` 演算子は短絡評価をしません。

```kotlin
val str1 = "a"
val str2 = "b"
// String.isEmpty() は文字列が空文字 "" の場合のみ true
str1.isEmpty() && str2.isEmpty() // str1.isEmpty() が false なので str2.isEmpty() は呼ばれない
str1.isEmpty() and str2.isEmpty() // str2.isEmpty() も呼ばれる
```
{% endhint %}

### OR 演算子 `||`
2 つの真偽値型の片方または両方が `true` の場合ならば `true` を返却します。

```kotlin
val t: Boolean = true
val f: Boolean = false
println(t || t) // true
println(t || f) // true
println(f || t) // true
println(f || f) // false
```

{% hint style="tip" %}
`||` 演算子と `or` 演算子の違い

`&&` 演算子と同様に `||` 演算子によく似た演算子として `or` 演算子があります。

`||` 演算子は短絡評価します。
一方で `or` 演算子は短絡評価をしません。

```kotlin
val str1 = "a"
val str2 = "b"
// String.isEmpty() は文字列が空文字 "" の場合のみ true
str1.isEmpty() || str2.isEmpty() // str1.isEmpty() が false なので str2.isEmpty() は呼ばれない
str1.isEmpty() or str2.isEmpty() // str2.isEmpty() も呼ばれる
```
{% endhint %}

### XOR 演算子 `xor`
2 つの真偽値型の片方のみ `true` ならば `true` を返却します。

```kotlin
val t: Boolean = true
val f: Boolean = false
println(t xor t) // false
println(t xor f) // true
println(f xor t) // true
println(f xor f) // false
```

### NOT 演算子 `!`
真偽値を逆転します。
```kotlin
val t: Boolean = true
val f: Boolean = false

println(!t) // false
println(!f) // false
```

## 真偽値を返却する演算
### 比較
2つの値を比較する演算です。

#### 同値 `==`
同じ値かどうか判定します。

```Kotlin
val a1 = "Hello"
val a2 = "Hello"
val b1 = 42
val b2 = 42
val c = 23.4

println(a1 == a2) // true
println(b1 == b2) // true
println(a1 == b1) // false
println(b1 == c) // true
```

{% hint style="tip" %}
Java の `Objects.equals(Object a, Object b)` に相当します。
Java の同値演算子 `==` とは異なることに注意してください。
{% endhint %}

#### 同値参照 `===`
同一のオブジェクトかどうか判定します。

```kotlin
val str1 = "hello"
val str2 = "Hello".toLowerCase() // hello
val str3 = str1

println(str1 == str2) // true
println(str1 === str2) // false

println(str1 == str3) // true
println(str1 === str3) // true
```

{% hint style="tip" %}
Java の `==` に相当します。
{% endhint %}

#### 大小 `>`, `>=`, `<`, `<=`
比較可能な 2 つの値を比較します。

```kotlin
val three: Int = 3
val two: Int = 2

println(two > three) // false
println(two >= three) // false
println(two < three) // true
println(two <= three) // true
```

数値以外の比較も可能です。
例えば文字列型 `String` の場合、 UTF-16 のコード順 (おおよそ辞書順) になります。

```kotlin
val a: String = "a"
val b: String = "b"

println(a > b) // false
println(a >= b) // false
println(a < b) // true
println(a <= b) // true
```

### 文字列の演算
#### 含まれるかどうか `in`, `contains`
指定した文字列が別の文字列に含まれるかどうか判定します。
`in` と `contains` は同じ動作をしますが、記法が異なります。

```kotlin
val helloWorld = "Hello World!"
val he = "He"

println(he in helloWorld) // true
println(helloWorld.contains(he)) // true
```

#### 空かどうか `isEmpty`, `isNotEmpty`
変数の値が空文字 (0文字) かどうか判定します。
`isNotEmpty` は空文字ではない場合 `true` になります。

```kotlin
val emptyString = ""
println(emptyString.isEmpty()) // true
println(emptyString.isNotEmpty()) //false

val helloWorld = "Hello World!"
println(helloWorld.isEmpty()) // false
println(helloWorld.isNotEmpty()) // true
```

#### 空白のみかどうか `isBlank`, `isNotBlank`
変数の文字が空文字または空白文字のみかどうか判定します。
半角スペース、全角スペース、タブ文字、改行文字などが空白文字として判定されます。

```kotlin
val emptyString = ""
println(emptyString.isBlank()) // true
println(emptyString.isNotBlank()) //false

val blankString = " \t   \n    "
println(blankString.isBlank()) // true
println(blankString.isNotBlank()) // false

val helloWorld = "Hello World!"
println(helloWorld.isBlank()) // false
println(helloWorld.isNotBlank()) // true
```
