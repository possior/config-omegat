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

文字列をパターン認識する為に使用される表現様式を[正規表現（外部リンク）](https://omegat.sourceforge.io/manual-standard/ja/chapter.appendices.html#app.regex)と言う。拡張された表現も存在するが、オメガティーは一般的な正規表現を用いて、タグ等を認識して居る。

### タグ処理の正規表現

翻訳前後で変更すべきでない箇所をタグとして予め認識するプロセスを[タグ処理（外部リンク）](https://omegat.sourceforge.io/manual-standard/ja/chapter.dialogs.preferences.html#dialogs.preferences.tag.processing)という。

###### カスタムタグの正規表現

カスタムタグには現在、以下の正規表現を使用して居る。

``` regex
(\u005b\d+(?:[\u002c\u002d\u2013\u2014]\d+)*\u005d)
```

１種類目のタグは`\u005b\d+(?:[\u002c\u002d\u2013\u2014]\d+)*\u005d`であり、引用を認識する。最初の文字はユニコード`U+005B`（`\u005b`）の`[`である。次に数字（`\d`）が１回以上繰り返される（`+`）。グループ（`(?:[\u002c\u002d\u2013\u2014]\d+)`）が０回以上繰り返される（`*`）。最後はユニコード`U+005D`（`\u005d`）の文字`]`である。グループ（`(?:[\u002c\u002d\u2013\u2014]\d+)`）を詳細に見る。ユニコード`U+002C`（`\u002c`）の`,`か`U+002D`（`\u002d`）の`-`か`U+2013`（`\u2013`）の`–`か`U+2014`（`\u2014`）の`—`かで始まり、其後は数字（`\d`）が１回以上繰り返される（`+`）。例えば、`[1]`や`[3,4,9]`や`[10–14]`をタグとして認識できる。

###### フラグの設定されたテキストの正規表現

フラグの設定されたテキストには現在、正規表現を設定して居ない。

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

### Tag Processing Regular Expressions

[Tag processing (external link)](https://omegat.sourceforge.io/manual-standard/en/chapter.dialogs.preferences.html#dialogs.preferences.tag.processing) is a process that recognizes the parts you should not modify during translation as tags in advance.

###### Custom Tags Regular Expressions

Custom tags currently use the following regular expressions.

``` regex
(\u005b\d+(?:[\u002c\u002d\u2013\u2014]\d+)*\u005d)
```

The first tag type is `\u005b\d+(?:[\u002c\u002d\u2013\u2014]\d+)*\u005d`, which recognizes citations. The first character is `[` of Unicode `U+005B` (`\u005b`). Next, digits (`\d`) repeat one or more times (`+`). Then a group (`(?:[\u002c\u002d\u2013\u2014]\d+)`) repeats zero or more times (`*`). Finally, it ends with `]` of Unicode `U+005D` (`\u005d`). We will see the group (`(?:[\u002c\u002d\u2013\u2014]\d+)`) more in detail. It begins with either `,` of Unicode `U+002C` (`\u002c`), `-` of `U+002D` (`\u002d`), `–` of `U+2013` (`\u2013`), or `—` of `U+2014` (`\u2014`), followed by digits (`\d`) repeating one or more times (`+`). For example, it can recognize `[1]`, `[3,4,9]`, and `[10–14]` as tags.

###### Flagged Text Regular Expressions

Flagged text currently does not use regular expressions.