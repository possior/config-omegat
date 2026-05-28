[日本語](#オメガティー設定)｜[English](#omegat-configuration)｜[`omegat.prefs`](../../source/.omegat/omegat.xml)

``` text
xml
omegat
└── preference
    ├── tagValidateOnLeave
    ├── tagValidation_customPattern
    └── tagValidation_removePattern
```

# オメガティー設定

オメガティーのギットハブ・リポジトリ（外部リポジトリ）：

- [omegat-org/omegat](https://github.com/omegat-org/omegat/)
- [omegat-org/omegat/test-acceptance/data/config/omegat.prefs](https://raw.githubusercontent.com/omegat-org/omegat/master/test-acceptance/data/config/omegat.prefs)

## 目次

- [基本構造](#基本構造)
- [環境設定](#環境設定)
  - [設定：`tagValidateOnLeave`](#設定tagvalidateonleave)
  - [設定：`tagValidation_customPattern`](#設定tagvalidation_custompattern)
  - [設定：`tagValidation_removePattern`](#設定tagValidation_removePattern)
  - [タグ処理](#タグ処理)
    - [カスタムタグ](#カスタムタグ)
    - [フラグの設定されたテキスト](#フラグの設定されたテキスト)
- [正規表現](#正規表現)

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

###### 設定：`tagValidateOnLeave`

分節を移動する際に、タグが不一致である場合はエラーを表示する。

``` xml
<tagValidateOnLeave><!-- 真理値 --></tagValidateOnLeave>
```

###### 設定：`tagValidation_customPattern`

翻訳結果に反映すべきタグを識別する正規表現を定義する。

``` xml
<tagValidation_customPattern><!-- 正規表現 --></tagValidation_customPattern>
```

###### 設定：`tagValidation_removePattern`

翻訳対象から自動で削除するタグを識別する正規表現を定義する。

``` xml
<tagValidation_removePattern><!-- 正規表現 --></tagValidation_removePattern>
```

### タグ処理

###### カスタムタグ

###### フラグの設定されたテキスト

## 正規表現

文字列をパターン認識する為に使用される表現様式を**正規表現**と言う。拡張された表現も存在するが、オメガティーは一般的な正規表現を用いて、タグ等を認識して居る。

###### 正規表現：`tagValidation_customPattern`

`tagValidation_customPattern`設定には現在以下の正規表現を使用して居る。

``` regex
(\u005b\d+(?:[\u002c\u002d\u2013\u2014]\d+)*\u005d)
```

１種類目のタグは`\u005b\d+(?:[\u002c\u002d\u2013\u2014]\d+)*\u005d`であり、引用を認識する。最初の文字はユニコード`U+005B`（`\u005b`）の`[`である。次に数字（`\d`）が１回以上繰り返される（`+`）。グループ（`(?:[\u002c\u002d\u2013\u2014]\d+)`）が０回以上繰り返される（`*`）。最後はユニコード`U+005D`（`\u005d`）の文字`]`である。グループ（`(?:[\u002c\u002d\u2013\u2014]\d+)`）を詳細に見る。ユニコード`U+002C`（`\u002c`）の`,`か`U+002D`（`\u002d`）の`-`か`U+2013`（`\u2013`）の`–`か`U+2014`（`\u2014`）の`—`かで始まり、其後は数字（`\d`）が１回以上繰り返される（`+`）。例えば、`[1]`や`[3,4,9]`や`[10–14]`をタグとして認識できる。

# OmegaT Configuration

OmegaT's GitHub repository (external repository):

- [omegat-org/omegat](https://github.com/omegat-org/omegat/)
- [omegat-org/omegat/test-acceptance/data/config/omegat.prefs](https://raw.githubusercontent.com/omegat-org/omegat/master/test-acceptance/data/config/omegat.prefs)

## Table of Contents

- [Basic Structure](#basic-structure)
- [Preferences](#preferences)
  - [Setting: `tagValidateOnLeave`](#setting-tagvalidateonleave)
  - [Setting: `tagValidation_customPattern`](#setting-tagvalidation_custompattern)
  - [Setting: `tagValidation_removePattern`](#setting-tagvalidation_removepattern)
  - [Tag Processing](#tag-processing)
    - [Custom Tags](#custom-tags)
    - [Flagged Text](#flagged-text)
- [Regular Expression](#regular-expression)
  - [Regex: `tagValidation_customPattern`](#regex-tagvalidation_custompattern)

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

###### Setting: `tagValidateOnLeave`

Err that a tag does not match when moving to another segment.

``` xml
<tagValidateOnLeave><!-- Boolean value --></tagValidateOnLeave>
```

###### Setting: `tagValidation_customPattern`

Define a regular expression that identifies valid tags to be preserved in the translation result.

``` xml
<tagValidation_customPattern><!-- regular expression --></tagValidation_customPattern>
```

###### Setting: `tagValidation_removePattern`

Define a regular expression that identifies tags to remove from the translation.

``` xml
<tagValidation_removePattern><!-- regular expression --></tagValidation_removePattern>
```

### Tag Processing

###### Custom Tags

###### Flagged Text

## Regular Expression

A **regular expression** (**regex**) is a formatted expression used to recognize text in a pattern. Though there exists an expanded version, OmegaT uses general regular expression for recognizing tags.

###### Regex：`tagValidation_customPattern`

The setting `tagValidation_customPattern` currently uses the following regular expression.

``` regex
(\u005b\d+(?:[\u002c\u002d\u2013\u2014]\d+)*\u005d)
```

The first tag type is `\u005b\d+(?:[\u002c\u002d\u2013\u2014]\d+)*\u005d`, which recognizes citations. The first character is `[` of Unicode `U+005B` (`\u005b`). Next, digits (`\d`) repeat one or more times (`+`). Then a group (`(?:[\u002c\u002d\u2013\u2014]\d+)`) repeats zero or more times (`*`). Finally, it ends with `]` of Unicode `U+005D` (`\u005d`). We will see the group (`(?:[\u002c\u002d\u2013\u2014]\d+)`) more in detail. It begins with either `,` of Unicode `U+002C` (`\u002c`), `-` of `U+002D` (`\u002d`), `–` of `U+2013` (`\u2013`), or `—` of `U+2014` (`\u2014`), followed by digits (`\d`) repeating one or more times (`+`). For example, it can recognize `[1]`, `[3,4,9]`, and `[10–14]` as tags.