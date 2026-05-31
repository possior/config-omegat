[日本語](#オメガティーの環境設定)｜[English](#omegat-preferences)｜[`omegat.prefs`](../../source/.omegat/omegat.xml)

``` text
xml
omegat
└── preference
   ├── tagValidateOnLeave
   ├── tagValidation_customPattern
   └── tagValidation_removePattern
```

# オメガティーの環境設定

オメガティーのギットハブ・リポジトリ（外部リポジトリ）：

- [omegat-org/omegat](https://github.com/omegat-org/omegat/)
- [omegat-org/omegat/test-acceptance/data/config/omegat.prefs](https://raw.githubusercontent.com/omegat-org/omegat/master/test-acceptance/data/config/omegat.prefs)

## 目次

- [基本構造](#基本構造)
- [環境設定](#環境設定)
  - [タグ処理](#タグ処理)
- - [カスタムタグ](#カスタムタグ)
- - [フラグの設定されたテキスト](#フラグの設定されたテキスト)
- [正規表現](#正規表現)
  - [タグ処理の正規表現](#タグ処理の正規表現)
- - [訳文におけるタグ順序の入れ替えを許可する](#訳文におけるタグ順序の入れ替えを許可する)
- - [タグに課題がある訳文ファイルの作成をブロックする](#タグに課題がある訳文ファイルの作成をブロックする)
- - [カスタムタグの正規表現](#カスタムタグの正規表現)
- - [フラグの設定されたテキストの正規表現](#フラグの設定されたテキストの正規表現)

## 基本構造

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<omegat>
  <preference version="1.0">
    <!-- オメガティーの環境設定 -->
  </preference>
</omegat>
```

ＸＭＬ宣言：`UTF-8`で符号化された第`1.0`版の`xml`形式である事を宣言する。

``` xml
<?xml version="1.0" encoding="UTF-8"?>
```

オメガティーの設定を格納する`omegat`要素。

``` xml
<omegat><!-- オメガティーの設定 --></omegat>
```

オメガティーの環境設定を格納する第`1.0`版の`preference`要素。

``` xml
<preference version="1.0"><!-- オメガティーの環境設定 --></preference>
```

## 環境設定

「設定」＞「環境設定」（ショートカット：`ALT + O`, `P`）。

### タグ処理

翻訳前後で変更すべきでない箇所をタグとして予め認識するプロセスを[タグ処理（外部リンク）](https://omegat.sourceforge.io/manual-standard/ja/chapter.dialogs.preferences.html#dialogs.preferences.tag.processing)という。

#### 訳文におけるタグ順序の入れ替えを許可する

``` xml
<loose_tag_ordering><!-- trueあるいはfalse --></loose_tag_ordering>
```

#### タグに課題がある訳文ファイルの作成をブロックする

``` xml
<tags_valid_required><!-- trueあるいはfalse --></tags_valid_required>
``` 

###### カスタムタグ

翻訳結果に反映すべきタグを識別する[正規表現（外部リンク）](https://omegat.sourceforge.io/manual-standard/ja/chapter.appendices.html#app.regex)を定義する。

``` xml
<tagValidation_customPattern><!-- 正規表現 --></tagValidation_customPattern>
```

###### フラグの設定されたテキスト

翻訳対象から自動で削除するタグを識別する[正規表現（外部リンク）](https://omegat.sourceforge.io/manual-standard/ja/chapter.appendices.html#app.regex)を定義する。

``` xml
<tagValidation_removePattern><!-- 正規表現 --></tagValidation_removePattern>
```

## 正規表現

文字列をパターン認識する為に使用される表現様式を**正規表現**と言う。拡張された表現も存在するが、オメガティーは一般的な正規表現を用いて、タグ等を認識して居る。尚、正規表現には幾つか種類が存在するが、オメガティーは`java`依存のソフトウェアなので、`java`の正規表現を採用して居ると思われる。

任意の文字を認識する為に、正規表現に其の文字を含められる。例えば、`omegat`と云う文字列を認識する正規表現は`omegat`である。併し、正規表現に特有の役割を有する文字である**メタ文字**を認識する時に注意が必要だ。`java`依存の正規表現のメタ文字は、`<`、`(`、`[`、`{`、`\`、`^`、`-`、`=`、`$`、`!`、`|`、`]`、`}`、`)`、`?`、`*`、`+`、`.`、`>`である。本来はメタ文字に使用される文字を正規表現で認識する為には、`\`を付して`\<`、`\(`、`\[`、`\{`、`\\`、`\^`、`\-`、`\=`、`\$`、`\!`、`\|`、`\]`、`\}`、`\)`、`\?`、`\*`、`\+`、`\.`、`\>`と記述する。併し、非常に読み辛いので、本リポジトリではユニコード表記を採用して居る。ユニコードが`U+####`の文字を認識する、ユニコード表記の正規表現は`\u####`である。是に従えば、メタ文字に使用されて居る文字は`\`を伴わずに、`\u003C`、`\u0028`、`\u005B`、`\u007B`、`\u005C`、`\u005E`、`\u002D`、`\u003D`、`\u0024`、`\u0021`、`\u007C`、`\u005D`、`\u007D`、`\u0029`、`\u003F`、`\u002A`、`\u002B`、`\u002E`、`\u003E`で認識できる。少なくとも`\u####`の部分は特定の文字を認識して、其れ以外の文字はメタ文字であると分かるだろう。ユニコードの文字を対照する際には、其の正規表現が書かれて居たファイルに対応するドキュメント（`document`ディレクトリ内に格納）を参照する事。

列挙された文字を**クラス**と呼ぶ。其の列挙された文字の内、何れか１文字と一致させる場合は`[`と`]`で括る。何れの１文字とも一致させない場合は`[^`と`]`で括る。詳細は[dev.java（外部リンク）](https://dev.java/learn/regex/character-classes/)を参照せよ。頻繁に用いられるクラスは既に略記が存在する。主要な略記を以下に挙げるが、[dev.java（外部リンク）](https://dev.java/learn/regex/predefined-character-classes/)も参照せよ。

- `.`：任意の１文字。制限なし。
- `\d`：数字の１文字。`[\u0030\u0031\u0032\u0033\u0034\u0035\u0036\u0037\u0038\u0039]`の略。
- `\D`：数字以外の１文字。`[^\u0030\u0031\u0032\u0033\u0034\u0035\u0036\u0037\u0038\u0039]`の略。
- `\s`：空白の１文字。`[\u0009\u000A\u000B\u000C\u000D]`の略。
- `\S`：空白以外の１文字。`[^\u0009\u000A\u000B\u000C\u000D]`の略。
- `\w`：一般的な英数字の１文字。`[\u0041\u0042\u0043\u0044\u0045\u0046\u0047\u0048\u0049\u004A\u004B\u004C\u004D\u004E\u004F\u0050\u0051\u0052\u0053\u0054\u0055\u0056\u0057\u0058\u0059\u005A\u0061\u0062\u0063\u0064\u0065\u0066\u0067\u0068\u0069\u006A\u006B\u006C\u006D\u006E\u006F\u0070\u0071\u0072\u0073\u0074\u0075\u0076\u0077\u0078\u0079\u007A\u005F]`の略。
- `\W`：一般的な英数字以外の１文字。`[^\u0041\u0042\u0043\u0044\u0045\u0046\u0047\u0048\u0049\u004A\u004B\u004C\u004D\u004E\u004F\u0050\u0051\u0052\u0053\u0054\u0055\u0056\u0057\u0058\u0059\u005A\u0061\u0062\u0063\u0064\u0065\u0066\u0067\u0068\u0069\u006A\u006B\u006C\u006D\u006E\u006F\u0070\u0071\u0072\u0073\u0074\u0075\u0076\u0077\u0078\u0079\u007A\u005F]`の略。

文字或いは表現の集合を**グループ**と呼ぶ。グループに一致した文字列を取得したい場合は`(`と`)`で括り、取得しない場合は`(?:`と`)`で括る。文字列を取得して居れば、其の文字列を正規表現中で使用できる。#番目のグループで取得した文字列を使用する場合は、`\#`と記述する。グループ内の正規表現は`|`で並列（論理式のＯＲに相当する）できる。詳細は[dev.java（外部リンク）](https://dev.java/learn/regex/groups/)を参照せよ。

文字の繰り返しを認識する表現を**クアンティファイア**と呼ぶ。クアンティファイアには３種類在り、（１）対象の文字列の全体から後退しながら一致を試みる、（２）対象の文字列の先端から前進しながら一致を試みる、（３）対象の文字列の全体の一致を試みるのみの場合だ。以下にクアンティファイアと其の種類を挙げる。詳細は[dev.java（外部リンク）](https://dev.java/learn/regex/quantifiers/)を参照せよ。

- `?`：直前の文字又は表現の０回乃至１回の繰り返しを認識するクアンティファイア（１）。
- `*`：直前の文字又は表現の０回以上の繰り返しを認識する（１）。
- `+`：直前の文字又は表現の１回以上の繰り返しを認識する（１）。
- `??`：直前の文字又は表現の０回乃至１回の繰り返しを認識する（２）。
- `*?`：直前の文字又は表現の０回以上の繰り返しを認識する（２）。
- `+?`：直前の文字又は表現の１回以上の繰り返しを認識する（２）。
- `?+`：直前の文字又は表現の０回乃至１回の繰り返しを認識する（１）。
- `*+`：直前の文字又は表現の０回以上の繰り返しを認識する（１）。
- `++`：直前の文字又は表現の１回以上の繰り返しを認識する（１）。

クアンティファイアでより詳細に制御する場合は、以下の通り`{`と`}`で何回以上何回以下繰り返すか指定する。

- `{`n`}`：直前の文字又は表現のn回の繰り返しを認識する。
- `{`n`,}`：直前の文字又は表現のn回以上の繰り返しを認識する。
- `{,`m`}`：直前の文字又は表現のm回以下の繰り返しを認識する。
- `{`n`,`m`}`：直前の文字又は表現のn回以上m回以下の繰り返しを認識する。

### タグ処理の正規表現

翻訳前後で変更すべきでない箇所をタグとして予め認識するプロセスを[タグ処理（外部リンク）](https://omegat.sourceforge.io/manual-standard/ja/chapter.dialogs.preferences.html#dialogs.preferences.tag.processing)という。

#### カスタムタグの正規表現

現在、カスタムタグには以下の正規表現が設定されて居る。各タグはグループとして`(`と`)`に括られて居り、タグ同士は`|`で区切られて居る。各タグの正規表現に就いては以降に其々詳述する。

``` regular expression
(\u003C[\u0021\u002F\u003F]?[\w\u002D]+\s*(?:[\w\u002D]+(?:\u003D\u0022[^\u0022]*\u0022|\u003D\u0027[^\u0027]*\u0027)?)*\s*[\u002F\u003F]?\u003E|\u003C\u0021\u002D{2}.*?\u002D{2}\u003E)|((?=^|[^\u005C])\u005C\u0028(?:[^\u005C]|\u005C[^\u0029])*\u005C\u0029|(?=^|[^\u005C])\u005C\u005B(?:[^\u005C]|\u005C[^\u005D])*\u005C\u005D|(?=^|[^\u0024])(?<latexmathdollar>\u0024{1,2})(?:[^\u0024\u005C]|\u005C.)*(?:\k<latexmathdollar>)(?=$|[^\u0024]))
```

ＨＴＭＬ等のタグは言語に限らず共通であるので、オメガティーでもタグとして認識されるべきだ。`<`から始まり`>`で終わる形式であり、宣言タグ、開始タグ、及び終了タグの種類が在る。又、タグに属性を付与できて、属性も翻訳前後で変化しないので、タグとして認識する。

``` regular expression
\u003C[\u0021\u002F\u003F]?[\w\u002D]+\s*(?:[\w\u002D]+(?:\u003D\u0022[^\u0022]*\u0022|\u003D\u0027[^\u0027]*\u0027)?)*\s*[\u002F\u003F]?\u003E|\u003C\u0021\u002D{2}.*?\u002D{2}\u003E
```

- `\u0021`：ユニコード`U+0021`の`!`。
- `\u0022`：ユニコード`U+0022`の`"`。
- `\u0027`：ユニコード`U+0027`の`'`。
- `\u002D`：ユニコード`U+002D`の`-`。
- `\u002F`：ユニコード`U+002F`の`/`。
- `\u003C`：ユニコード`U+003C`の`<`。
- `\u003D`：ユニコード`U+003D`の`=`。
- `\u003E`：ユニコード`U+003E`の`>`。
- `\u003F`：ユニコード`U+003F`の`?`。

数式は全世界共通であるから、ラテフの数式ブロックはタグとして認識されるべきだ。数式ブロックは、`\(`、`\[`、`$`、及び`$$`から始まり、其々`\)`、`\]`、`$`、及び`$$`で終わる。`$`や`$$`を使用した数式ブロックは認識に失敗する可能性が有り、翻訳前に予め`\(\)`や`\[\]`に変換する事を推奨する。

``` regular expression
(?=^|[^\u005C])\u005C\u0028(?:[^\u005C]|\u005C[^\u0029])*\u005C\u0029|(?=^|[^\u005C])\u005C\u005B(?:[^\u005C]|\u005C[^\u005D])*\u005C\u005D|(?=^|[^\u0024])(?<latexmathdollar>\u0024{1,2})(?:[^\u0024\u005C]|\u005C.)*(?:\k<latexmathdollar>)(?=$|[^\u0024])
```

- `\u0024`：ユニコード`U+0024`の`$`。
- `\u0028`：ユニコード`U+0028`の`(`。
- `\u0029`：ユニコード`U+0029`の`)`。
- `\u005B`：ユニコード`U+005B`の`[`。
- `\u005C`：ユニコード`U+005C`の`\`。
- `\u005D`：ユニコード`U+005D`の`]`。

#### フラグの設定されたテキストの正規表現

# OmegaT Preferences

OmegaT's GitHub repository (external repository):

- [omegat-org/omegat](https://github.com/omegat-org/omegat/)
- [omegat-org/omegat/test-acceptance/data/config/omegat.prefs](https://raw.githubusercontent.com/omegat-org/omegat/master/test-acceptance/data/config/omegat.prefs)

## Table of Contents

- [Basic Structure](#basic-structure)
- [Preferences](#preferences)
  - [Tag Processing](#tag-processing)
- - [Custom Tags](#custom-tags)
- - [Flagged Text](#flagged-text)
- [Regular Expression](#regular-expression)
  - [Tag Processing Regular Expressions](#tag-processing-regular-expressions)
- - [Allow Translated Tags to Be in a Different Order](#allow-translated-tags-to-be-in-a-different-order)
- - [Block the Creation of Translated Files with Tag Issues](#block-the-creation-of-translated files-with-tag-issues)
- - [Custom Tags Regular Expressions](#custom-tags-regular-expressions)
- - [Flagged Text Regular Expressions](#flagged-text-tegular-expressions)

## Basic Structure

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<omegat>
  <preference version="1.0">
    <!-- omegat preferences -->
  </preference>
</omegat>
```

XML declaration: declare to use the `xml` format version `1.0` encoded in `UTF-8`.

``` xml
<?xml version="1.0" encoding="UTF-8"?>
```

The `omegat` element that stores OmegaT settings.

``` xml
<omegat><!-- omegat settings --></omegat>
```

The `preference` element that stores OmegaT preferences version `1.0`.

``` xml
<preference version="1.0"><!-- omegat preferences --></preference>
```

## Preferences

"Options" > "Preferences" (Shortcut Key: `ALT + O`, `P`).

### Tag Processing

[Tag processing (external link)](https://omegat.sourceforge.io/manual-standard/en/chapter.dialogs.preferences.html#dialogs.preferences.tag.processing) is a process that recognizes the parts you should not modify during translation as tags in advance.

###### Allow Translated Tags to Be in a Different Order

``` xml
<loose_tag_ordering><!-- true or false --></loose_tag_ordering>
```

###### Block the Creation of Translated Files with Tag Issues

``` xml
<tags_valid_required><!-- true or false --></tags_valid_required>
``` 

#### Custom Tags

Define [regular expressions (external link)](https://omegat.sourceforge.io/manual-standard/en/chapter.appendices.html#app.regex) that identify valid tags to be preserved in the translation result.

``` xml
<tagValidation_customPattern><!-- regular expressions --></tagValidation_customPattern>
```

#### Flagged Text

Define [regular expressions (external link)](https://omegat.sourceforge.io/manual-standard/en/chapter.appendices.html#app.regex) that identify tags to remove from the translation.

``` xml
<tagValidation_removePattern><!-- regular expressions --></tagValidation_removePattern>
```

## Regular Expression

The expression used to recognize text via pattern recognition is called **regular expression**. While extended expressions also exist, OmegaT uses standard regular expressions to recognize tags for instance. Note that there are several types of regular expressions, but since OmegaT is software dependent on `java`, it presumably adopts `java`'s regular expression.

To recognize any arbitrary character, that character can be included in the regular expression. For example, the regular expression to recognize the `omegat` is simply `omegat`. However, be cautious when recognizing **meta-characters**, which have special roles in regular expressions. The meta-characters in `java`-dependent regular expressions are: `<`, `(`, `[`, `{`, `\`, `^`, `-`, `=`, `$`, `!`, `|`, `]`, `}`, `)`, `?`, `*`, `+`, `.`, and `>`. To recognize characters used as meta-characters in a regular expression, you may prefix them with `\`, writing them as `\<`, `\(`, `\[`, `\{`, `\\`, `\^`, `\-`, `\=`, `\$`, `\!`, `\|`, `\]`, `\}`, `\)`, `\?`, `\*`, `\+`, `\.`, `\>`. However, as this is very difficult to read, this repository adopts Unicode notation. The Unicode notation to recognize a character with Unicode `U+####` is `\u####`. Following this, the characters used as meta-characters can be recognized without `\` as: `\u003C`, `\u0028`, `\u005B`, `\u007B`, `\u005C`, `\u005E`, `\u002D`, `\u003D`, `\u0024`, `\u0021`, `\u007C`, `\u005D`, `\u007D`, `\u0029`, `\u003F`, `\u002A`, `\u002B`, `\u002E`, `\u003E`. At least, you know the `\u####` parts are literal characters, while others are meta-characters. If you would like to reference what character the Unicode points, reference the document, stored in the `document` directory, corresponding to the file where you saw the Unicode.

The listed characters are called a **class**. To match any one of the listed characters, enclose them in `[` and `]`. To match none of the listed characters, enclose them in `[^` and `]`. For details, refer to [dev.java (external link)](https://dev.java/learn/regex/character-classes/). Commonly used classes already have shorthand notations. Major shorthands are listed below; also refer to [dev.java (external link)](https://dev.java/learn/regex/predefined-character-classes/).

- `.`: Any single character. No restrictions.
- `\d`: One digit character. Shorthand for `[\u0030\u0031\u0032\u0033\u0034\u0035\u0036\u0037\u0038\u0039]`.
- `\D`: One non-digit character. Shorthand for `[^\u0030\u0031\u0032\u0033\u0034\u0035\u0036\u0037\u0038\u0039]`.
- `\s`: One whitespace character. Shorthand for `[\u0009\u000A\u000B\u000C\u000D]`.
- `\S`: One non-whitespace character. Shorthand for `[^\u0009\u000A\u000B\u000C\u000D]`.
- `\w`: One general alphanumeric character. Shorthand for `[\u0041\u0042\u0043\u0044\u0045\u0046\u0047\u0048\u0049\u004A\u004B\u004C\u004D\u004E\u004F\u0050\u0051\u0052\u0053\u0054\u0055\u0056\u0057\u0058\u0059\u005A\u0061\u0062\u0063\u0064\u0065\u0066\u0067\u0068\u0069\u006A\u006B\u006C\u006D\u006E\u006F\u0070\u0071\u0072\u0073\u0074\u0075\u0076\u0077\u0078\u0079\u007A\u005F]`.
- `\W`: One non-general alphanumeric character. Shorthand for `[^\u0041\u0042\u0043\u0044\u0045\u0046\u0047\u0048\u0049\u004A\u004B\u004C\u004D\u004E\u004F\u0050\u0051\u0052\u0053\u0054\u0055\u0056\u0057\u0058\u0059\u005A\u0061\u0062\u0063\u0064\u0065\u0066\u0067\u0068\u0069\u006A\u006B\u006C\u006D\u006E\u006F\u0070\u0071\u0072\u0073\u0074\u0075\u0076\u0077\u0078\u0079\u007A\u005F]`.

A collection of characters or expressions is called a **group**. To retrieve the string matched by a group, enclose it in `(` and `)`; if retrieval is not needed, enclose it in `(?:` and `)`. If a string is retrieved, that string can be used within the regular expression. To use the string retrieved by the # th group, write `\#`. Regular expressions within a group can be arranged in parallel (equivalent to logical OR) using `|`. Reference [dev.java (external link)](https://dev.java/learn/regex/groups/) for more information.

Expressions recognizing repetition of characters are called **quantifiers**. There are three types of quantifiers: (1) attempting matches while backtracking from the end of the target text, (2) attempting matches while advancing from the start of the target text, and (3) attempting only a full match of the entire target text. Below are the quantifiers and their types. For details, refer to [dev.java (external link)](https://dev.java/learn/regex/quantifiers/).

- `?`: Quantifier recognizing 0 to 1 repetition of the preceding character or expression (Type 1).
- `*`: Quantifier recognizing 0 or more repetitions of the preceding character or expression (Type 1).
- `+`: Quantifier recognizing 1 or more repetitions of the preceding character or expression (Type 1).
- `??`: Quantifier recognizing 0 to 1 repetition of the preceding character or expression (Type 2).
- `*?`: Quantifier recognizing 0 or more repetitions of the preceding character or expression (Type 2).
- `+?`: Quantifier recognizing 1 or more repetitions of the preceding character or expression (Type 2).
- `?+`: Quantifier recognizing 0 to 1 repetition of the preceding character or expression (Type 1).
- `*+`: Quantifier recognizing 0 or more repetitions of the preceding character or expression (Type 1).
- `++`: Quantifier recognizing 1 or more repetitions of the preceding character or expression (Type 1).

For more detailed control with quantifiers, specify the number of repetitions using `{` and `}` as follows:

- `{`n`}`: Recognizes exactly n repetitions of the preceding character or expression.
- `{`n`,}`: Recognizes n or more repetitions of the preceding character or expression.
- `{,`m`}`: Recognizes m or fewer repetitions of the preceding character or expression.
- `{`n,m`}`: Recognizes n to m repetitions of the preceding character or expression.

### Tag Processing Regular Expressions

[Tag processing (external link)](https://omegat.sourceforge.io/manual-standard/en/chapter.dialogs.preferences.html#dialogs.preferences.tag.processing) is a process that recognizes the parts you should not modify during translation as tags in advance.

#### Custom Tags Regular Expressions

The regular expression below is currently set for custom tags. Each tag is grouped by `(` and `)`, and those tags are separated by `|`. Each tag's regular expression will be documented in detail below.

``` regular expression
((?=^|[^\u005C])\u005C\u0028(?:[^\u005C]|\u005C[^\u0029])*\u005C\u0029|(?=^|[^\u005C])\u005C\u005B(?:[^\u005C]|\u005C[^\u005D])*\u005C\u005D|(?=^|[^\u0024])(?<latexmathdollar>\u0024{1,2})(?:[^\u0024\u005C]|\u005C.)*(?:\k<latexmathdollar>))
```

Mathematics is universal, and therefore, mathematical equation block in LaTeX should be tagged. Those blocks start with `\(`, `\[`, `$`, and `$$` and end with `\)`, `\]`, `$`, and `$$` respectively. This expression may fail recognizing blocks that use `$` or `$$`; it is recommended to convert them to `\(\)` or `\[\]` in advance of translation.

``` regular expression
(?=^|[^\u005C])\u005C\u0028(?:[^\u005C]|\u005C[^\u0029])*\u005C\u0029|(?=^|[^\u005C])\u005C\u005B(?:[^\u005C]|\u005C[^\u005D])*\u005C\u005D|(?=^|[^\u0024])(?<latexmathdollar>\u0024{1,2})(?:[^\u0024\u005C]|\u005C.)*(?:\k<latexmathdollar>)
```

- `\u0024`: Unicode `U+0024` is `$`.
- `\u0028`: Unicode `U+0028` is `(`.
- `\u0029`: Unicode `U+0029` is `)`.
- `\u005B`: Unicode `U+005B` is `[`.
- `\u005C`: Unicode `U+005C` is `\`.
- `\u005D`: Unicode `U+005D` is `]`.

#### Flagged Text Regular Expressions