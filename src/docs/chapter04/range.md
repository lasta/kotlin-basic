# 範囲 (range)

「範囲」は制御構文ではありません。
ですが、この後登場する「when 式」、「for ループ」、そして「while ループ」にて重要な役割を果たす場合があります。

[9章「コレクション」](../chapter09/chapter09.md) にて詳細に扱うので、「制御構文」で必要な部分のみ解説します。

## 範囲 の基本構文
`a` から `b` までの範囲を `a..b` と表記します。
たとえば `1..10` の場合は、 `1` 以上 `10` 以下を表します。

## 範囲 の特徴
範囲 内に値が含まれるかどうか判定することができます。
「含まれるかどうか」判定するは [真偽値の演算](../chapter03/boolean_operation.md) で取り上げた通り `in` を用います。
`contains` も用いることができますが、多くの場合は `in` で表現したほうが可読性が上がります。

```kotlin
val oneToTen = 1..10

println(0 in oneToTen) // false
println(1 in oneToTen) // true
println(5 in oneToTen) // true
println(10 in oneToTen) // true
println(11 in oneToTen) // false
```

すなわち、 `5 in 1..10` は `5 >= 1 && 5 <= 10` と等価です。

文字でも同様に扱えます。

```kotlin
val hToN = 'h'..'n'

println('g' in hToN) // false
println('h' in hToN) // true
println('n' in hToN) // true
println('o' in hToN) // false
```

## 範囲 と等差数列 (progression)
整数と文字の範囲は、同時に等差数列の性質も持ちます。

| 型     | 範囲型      | 等差数列型        |
|--------|-------------|-------------------|
| `Int`  | `IntRange`  | `IntProgression`  |
| `Long` | `LongRange` | `LongProgression` |
| `Char` | `CharRange` | `CharProgression` |

たとえば `1..10` は `1` 以上 `10` 以下という範囲であるとともに、初項1、交差1、最大値10の等差数列 (`1, 2, 3, 4, 5, 6, 7, 8, 9, 10`) の意味も持ちます。

$$
\begin{cases}
    a_1 = 1 \\
    a_n = n & \left(1 \leq n \leq 10\right)
\end{cases}
$$

この性質はこのあと登場する [for ルーブ](for.md) で非常に役立ちます。

### 交差が 2 以上の場合
交差を 1 以外の値にする場合は `step` を用います。

例えば `1` 以上 `10` 以下で初項 `1`、交差 `2` (`1, 3, 5, 7, 9`) の場合は `1..10 step 2` と表記します。

$$
\begin{cases}
    a_1 = 1 \\
    a_n = 2n - 1& \left(1 \leq a_n \leq 10\right)
\end{cases}
$$

### 交差が -1 以下の場合
範囲 `..` は交差が正の数となります。
そのため、 `10..1` は空の範囲となります。

交差を負の数にしたい場合は `downTo` を用います。

たとえば `1` 以上 `10` 以下で初項 `10`、交差 `-2` (`10, 8, 6, 4, 2`) の場合は `10 downTo 1 step 2` と表記します。

$$
\begin{cases}
    a_1 = 10 \\
    a_n = -2n + 12 & \left(1 \leq a_n \leq 10\right)
\end{cases}
$$

