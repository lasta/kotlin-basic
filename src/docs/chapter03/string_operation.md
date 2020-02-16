# 文字列の演算
文字の集合である文字列型では、様々な演算を行うことができます。
ここでは代表的なものを紹介します。

## 長さ
文字列型の文字数を取り出すことができます。 (厳密には演算ではありません。)

```kotlin
val helloWorld: String = "Hello World!"
println(helloWorld.length) // 12
```

## 文字列結合 `+`
`+` 演算子で複数の文字列を結合することかできます。
文字列リテラル同士、文字列リテラルと文字列型の変数、文字列型の変数同士、どのパターンでも結合することができます。

```kotlin
val hello: String = "Hello"
val world: String = "World!"
println(hello + " " + world) // Hello World!
```

なお、文字列リテラルと変数を結合する場合は、多くの場合はテンプレート文字列を用います。

```kotlin
val hello: String = "Hello"
val world: String = "World!"
println("$hello $world") // Hello World!
```

## 分割 `split()`
指定した文字で分割をすることができます。
分割した文字列は **添字アクセス演算子** `[]` でアクセスできます。
**添字の番号は0から始まる** ことに注意してください。

```kotlin
val helloWorld: String = "Hello World!"
val split: List<String> = helloWorld.split(" ")
println(split[0]) // Hello
println(split[1]) // World!
```

`List<String>` については、 [9章「コレクション」](../chapter09/chapter09.md) で詳しく扱います。

## 添字アクセス `[]`
指定した文字番目の文字を取り出すことができます。
分割した際と同様に、 **添字アクセス演算子** `[]` でアクセスできます。
**添字の番号は0から始まる** ことに注意してください。

取り出されるのは1文字なので、 **文字型** (Char 型) になります。

```kotlin
val helloWorld: String = "Hello World!"
val exclamationMark: Char = helloWorld[11]
println(exclamationMark) // !
```

## 大文字化 `toUpperCase()`
アルファベットをすべて大文字 (Upper Case) 化することができます。

```kotlin
val helloWorld = "Hello World!"
println(helloWorld.toUpperCase()) // HELLO WORLD!
```

## 小文字化 `toLowerCase()`
アルファベットをすべて小文字 (Lower Case) 化することができます。

```kotlin
val helloWorld = "Hello World!"
println(helloWorld.toLowerCase()) // hello world!
```

## 数値型化 `toInt()`
文字列型の数値を数値型に変換することができます。

```kotlin
val fortyTwo: String = "42"
println(fortyTwo.toInt()) // 42

val twentyThreePointFour = "23.4"
println(twentyThreePointFour.toDouble()) // 23.4
```

もし数値以外の文字列を数値型に変換しようとした場合は、例外 (エラー) が発生します。

```kotlin
"a".toInt()
```
```
Exception in thread "main" java.lang.NumberFormatException: For input string: "a"

"main" スレッドで例外: java.lang.NumberFormatException (数値書式例外): 入力文字: "a"
```

## テンプレート文字列 `"""` その2
`$変数名` または `${変数名}` を文字列リテラル内に含めることで、変数の値を含めることができます。

```kotlin
val helloWorld = "Hello World!"
println("$helloWorld.length = ${helloWorld.length}") // Hello World!.length = 1
```
