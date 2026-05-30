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
    - [カスタムタグ](#カスタムタグ)
    - [フラグの設定されたテキスト](#フラグの設定されたテキスト)
- [正規表現](#正規表現)
  - [タグ処理の正規表現](#タグ処理の正規表現)
    - [訳文におけるタグ順序の入れ替えを許可する](#訳文におけるタグ順序の入れ替えを許可する)
    - [タグに課題がある訳文ファイルの作成をブロックする](#タグに課題がある訳文ファイルの作成をブロックする)
    - [カスタムタグの正規表現](#カスタムタグの正規表現)
    - [フラグの設定されたテキストの正規表現](#フラグの設定されたテキストの正規表現)

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

###### 訳文におけるタグ順序の入れ替えを許可する

``` xml
<loose_tag_ordering><!-- trueあるいはfalse --></loose_tag_ordering>
```

###### タグに課題がある訳文ファイルの作成をブロックする

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

任意の文字を認識する為に、正規表現に其の文字を含められる。例えば、`omegat`と云う文字列を認識する正規表現は`omegat`である。併し、正規表現に特有の役割を有する文字である**メタ文字**を認識する時に注意が必要だ。`java`依存の正規表現のメタ文字は、`<`、`(`、`[`、`{`、`\`、`^`、`-`、`=`、`$`、`!`、`|`、`]`、`}`、`)`、`?`、`*`、`+`、`.`、`>`である。本来はメタ文字に使用される文字を正規表現で認識する為には、`\`を付して`\<`、`\(`、`\[`、`\{`、`\\`、`\^`、`\-`、`\=`、`\$`、`\!`、`\|`、`\]`、`\}`、`\)`、`\?`、`\*`、`\+`、`\.`、`\>`と記述する。併し、非常に読み辛いので、本リポジトリではユニコード表記を採用して居る。ユニコードが`U+####`の文字を認識する、ユニコード表記の正規表現は`\u####`である。是に従えば、メタ文字に使用されて居る文字は`\`を伴わずに、`\u003c`、`\u0028`、`\u005b`、`\u007b`、`\u005c`、`\u005e`、`\u002d`、`\u003d`、`\u0024`、`\u0021`、`\u007c`、`\u005d`、`\u007d`、`\u0029`、`\u003f`、`\u002a`、`\u002b`、`\u002e`、`\u003e`で認識できる。少なくとも`\u####`の部分は特定の文字を認識して、其れ以外の文字はメタ文字であると分かるだろう。ユニコードの文字を対照する際には、其の正規表現が書かれて居たファイルに対応するドキュメント（`document`ディレクトリ内に格納）を参照する事。

列挙された文字を**クラス**と呼ぶ。其の列挙された文字の内、何れか１文字と一致させる場合は`[`と`]`で括る。何れの１文字とも一致させない場合は`[^`と`]`で括る。詳細は[dev.java（外部リンク）](https://dev.java/learn/regex/character-classes/)を参照せよ。頻繁に用いられるクラスは既に略記が存在する。主要な略記を以下に挙げるが、[dev.java（外部リンク）](https://dev.java/learn/regex/predefined-character-classes/)も参照せよ。

- `.`：任意の１文字。制限なし。
- `\d`：数字の１文字。`[\u0030\u0031\u0032\u0033\u0034\u0035\u0036\u0037\u0038\u0039]`の略。
- `\D`：数字以外の１文字。`[^\u0030\u0031\u0032\u0033\u0034\u0035\u0036\u0037\u0038\u0039]`の略。
- `\s`：空白の１文字。`[\u0009\u000A\u000B\u000C\u000D]`の略。
- `\S`：空白以外の１文字。`[^\u0009\u000A\u000B\u000C\u000D]`の略。
- `\w`：一般的な英数字の１文字。`[\u0041\u0042\u0043\u0044\u0045\u0046\u0047\u0048\u0049\u004a\u004b\u004c\u004d\u004e\u004f\u0050\u0051\u0052\u0053\u0054\u0055\u0056\u0057\u0058\u0059\u005a\u0061\u0062\u0063\u0064\u0065\u0066\u0067\u0068\u0069\u006a\u006b\u006c\u006d\u006e\u006f\u0070\u0071\u0072\u0073\u0074\u0075\u0076\u0077\u0078\u0079\u007a\u005f]`の略。
- `\W`：一般的な英数字以外の１文字。`[^\u0041\u0042\u0043\u0044\u0045\u0046\u0047\u0048\u0049\u004a\u004b\u004c\u004d\u004e\u004f\u0050\u0051\u0052\u0053\u0054\u0055\u0056\u0057\u0058\u0059\u005a\u0061\u0062\u0063\u0064\u0065\u0066\u0067\u0068\u0069\u006a\u006b\u006c\u006d\u006e\u006f\u0070\u0071\u0072\u0073\u0074\u0075\u0076\u0077\u0078\u0079\u007a\u005f]`の略。

文字の繰り返しを認識する表現を**クアンティファイア**と呼ぶ。クアンティファイアには３種類在り、（１）対象の文字列の全体から後退しながら一致を試みる、（２）対象の文字列の先端から前進しながら一致を試みる、（３）対象の文字列の全体の一致を試みるのみの場合だ。以下にクアンティファイアと其の種類を挙げる。詳細は[dev.java（外部リンク）](https://dev.java/learn/regex/quantifiers/)を参照せよ。

- `?`：直前の文字又は表現の０回乃至１回の繰り返しを認識するクアンティファイア（１）。
- `*`：直前の文字又は表現の０回以上の繰り返しを認識するクアンティファイア（１）。
- `+`：直前の文字又は表現の１回以上の繰り返しを認識するクアンティファイア（１）。
- `??`：直前の文字又は表現の０回乃至１回の繰り返しを認識するクアンティファイア（２）。
- `*?`：直前の文字又は表現の０回以上の繰り返しを認識するクアンティファイア（２）。
- `+?`：直前の文字又は表現の１回以上の繰り返しを認識するクアンティファイア（２）。
- `?+`：直前の文字又は表現の０回乃至１回の繰り返しを認識するクアンティファイア（１）。
- `*+`：直前の文字又は表現の０回以上の繰り返しを認識するクアンティファイア（１）。
- `++`：直前の文字又は表現の１回以上の繰り返しを認識するクアンティファイア（１）。

- `(`〜`)`：内側の正規表現に一致する文字列を取得する。
- `(?:`〜`)`：内側の正規表現に一致する文字列を一括りに扱う。
- `|`：直前と直後の文字又は表現の何れかに一致する。
- `{`ｎ`}`：直前の文字又は表現をｎ回繰り返す。
- `{`ｎ`,}`：直前の文字又は表現をｎ回以上繰り返す。
- `{,`ｍ`}`：直前の文字又は表現をｍ回以下繰り返す。
- `{`ｎ`,`ｍ`}`：直前の文字又は表現をｎ回以上ｍ回以下繰り返す。

### タグ処理の正規表現

翻訳前後で変更すべきでない箇所をタグとして予め認識するプロセスを[タグ処理（外部リンク）](https://omegat.sourceforge.io/manual-standard/ja/chapter.dialogs.preferences.html#dialogs.preferences.tag.processing)という。

###### カスタムタグの正規表現

``` regular expression
(\u005C[\u0028\u005B](?:[^\u005C]|\u005C[^\u0028\u0029\u005B\u005D])+\u005C[\u0029\u005D])
```

ラテフの数式表現（`\(`や`\[`で開始して`\)`や`\]`で終了する数式環境）を認識する正規表現。

``` regular expression
\u005C[\u0028\u005B](?:[^\u005C]|\u005C[^\u0028\u0029\u005B\u005D])+\u005C[\u0029\u005D]
```

- `\u0028`：ユニコード`U+0028`の`(`。
- `\u0029`：ユニコード`U+0029`の`)`。
- `\u005B`：ユニコード`U+005B`の`[`。
- `\u005C`：ユニコード`U+005C`の`\`。
- `\u005D`：ユニコード`U+005D`の`]`。

###### フラグの設定されたテキストの正規表現

# OmegaT Preferences

OmegaT's GitHub repository (external repository):

- [omegat-org/omegat](https://github.com/omegat-org/omegat/)
- [omegat-org/omegat/test-acceptance/data/config/omegat.prefs](https://raw.githubusercontent.com/omegat-org/omegat/master/test-acceptance/data/config/omegat.prefs)

## Table of Contents

- [Basic Structure](#basic-structure)
- [Preferences](#preferences)
  - [Tag Processing](#tag-processing)
    - [Custom Tags](#custom-tags)
    - [Flagged Text](#flagged-text)
- [Regular Expression](#regular-expression)
  - [Tag Processing Regular Expressions](#tag-processing-regular-expressions)
    - [Allow Translated Tags to Be in a Different Order](#allow-translated-tags-to-be-in-a-different-order)
    - [Block the Creation of Translated Files with Tag Issues](#block-the-creation-of-translated files-with-tag-issues)
    - [Custom Tags Regular Expressions](#custom-tags-regular-expressions)
    - [Flagged Text Regular Expressions](#flagged-text-tegular-expressions)

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

###### Custom Tags

Define [regular expressions (external link)](https://omegat.sourceforge.io/manual-standard/en/chapter.appendices.html#app.regex) that identify valid tags to be preserved in the translation result.

``` xml
<tagValidation_customPattern><!-- regular expressions --></tagValidation_customPattern>
```

###### Flagged Text

Define [regular expressions (external link)](https://omegat.sourceforge.io/manual-standard/en/chapter.appendices.html#app.regex) that identify tags to remove from the translation.

``` xml
<tagValidation_removePattern><!-- regular expressions --></tagValidation_removePattern>
```

## Regular Expression

[Regular expressions (regex) (external link)](https://omegat.sourceforge.io/manual-standard/en/chapter.appendices.html#app.regex) are formatted expressions used to recognize text in a pattern. Though there exists an expanded version, OmegaT uses general regular expression for recognizing tags.

Below is a list of special expressions used in regular expressions. In order to distinguish from those expressions, notate other characters in Unicode or similar (code expression starting with `\u00` or `\u`).

- `[`~`]`: Matches any one character listed inside.
- `[^`~`]`: Does not match any one character listed inside.
- `(`~`)`: Captures the string that matches the regular expression inside.
- `(?:`~`)`: Treats the string that matches the regular expression inside as a single group.
- `\d`: Matches a digit. Shorthand for `[\u0030\u0031\u0032\u0033\u0034\u0035\u0036\u0037\u0038\u0039]`.
- `\D`: Does not match a digit.
- `\s`: Matches whitespace. Shorthand for `[\u0009\u000A\u000B\u000C\u000D]`.
- `\S`: Does not match whitespace.
- `\w`: Matches common alphanumeric characters. Shorthand for `[\u0041\u0042\u0043\u0044\u0045\u0046\u0047\u0048\u0049\u0061\u0062\u0063\u0064\u0065\u0066\u0067\u0068\u0069\u006a\u006b\u006c\u006d\u006e\u006f\u0070\u0071\u0072\u0073\u0074\u0075\u0076\u0077\u0078\u0079\u007a\u005f]`.
- `\W`: Does not match common alphanumeric characters.
- `|`: Matches either the preceding or following character or expression.
- `?`: Repeats the preceding character or expression zero or one time.
- `*`: Repeats the preceding character or expression zero or more times.
- `+`: Repeats the preceding character or expression one or more times.
- `{`n`}`: Repeats the preceding character or expression exactly n times.
- `{`n`,}`: Repeats the preceding character or expression n or more times.
- `{,`m`}`: Repeats the preceding character or expression m or fewer times.
- `{`n`,`m`}`: Repeats the preceding character or expression between n and m times (inclusive).

### Tag Processing Regular Expressions

[Tag processing (external link)](https://omegat.sourceforge.io/manual-standard/en/chapter.dialogs.preferences.html#dialogs.preferences.tag.processing) is a process that recognizes the parts you should not modify during translation as tags in advance.

###### Custom Tags Regular Expressions

###### Flagged Text Regular Expressions