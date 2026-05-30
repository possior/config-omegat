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

文字列をパターン認識する為に使用される表現様式を[正規表現（外部リンク）](https://omegat.sourceforge.io/manual-standard/ja/chapter.appendices.html#app.regex)と言う。拡張された表現も存在するが、オメガティーは一般的な正規表現を用いて、タグ等を認識して居る。

正規表現で使用される特殊な表現を以下に列挙する。此等の表現との混同を避ける為に、其他の文字はユニコード表記等（`\x`や`\u`から始まるコード表現）にする。

- `[`〜`]`：内側に列挙された文字の何れか１文字に一致する。
- `[^`〜`]`：内側に列挙された文字の何れか１文字に一致しない。
- `(`〜`)`：内側の正規表現に一致する文字列を取得する。
- `(?:`〜`)`：内側の正規表現に一致する文字列を一括りに扱う。
- `\d`：数字に一致する。`[\x30\x31\x32\x33\x34\x35\x36\x37\x38\x39]`の略。
- `\D`：数字に一致しない。
- `\s`：空白に一致する。`[\x09\x0A\x0B\x0C\x0D]`の略。
- `\S`：空白に一致しない。
- `\w`：一般的な英文字に一致する。`[\x41\x42\x43\x44\x45\x46\x47\x48\x49\x4a\x4b\x4c\x4d\x4e\x4f\x50\x51\x52\x53\x54\x55\x56\x57\x58\x59\x5a\x61\x62\x63\x64\x65\x66\x67\x68\x69\x6a\x6b\x6c\x6d\x6e\x6f\x70\x71\x72\x73\x74\x75\x76\x77\x78\x79\x7a\x5f]`の略。
- `\W`：一般的な英文字に一致しない。
- `|`：直前と直後の文字又は表現の何れかに一致する。
- `?`：直前の文字又は表現を０回又は１回繰り返す。
- `*`：直前の文字又は表現を０回以上繰り返す。
- `+`：直前の文字又は表現を１回以上繰り返す。
- `{`ｎ`}`：直前の文字又は表現をｎ回繰り返す。
- `{`ｎ`,}`：直前の文字又は表現をｎ回以上繰り返す。
- `{,`ｍ`}`：直前の文字又は表現をｍ回以下繰り返す。
- `{`ｎ`,`ｍ`}`：直前の文字又は表現をｎ回以上ｍ回以下繰り返す。

### タグ処理の正規表現

翻訳前後で変更すべきでない箇所をタグとして予め認識するプロセスを[タグ処理（外部リンク）](https://omegat.sourceforge.io/manual-standard/ja/chapter.dialogs.preferences.html#dialogs.preferences.tag.processing)という。

###### カスタムタグの正規表現

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

### Tag Processing Regular Expressions

[Tag processing (external link)](https://omegat.sourceforge.io/manual-standard/en/chapter.dialogs.preferences.html#dialogs.preferences.tag.processing) is a process that recognizes the parts you should not modify during translation as tags in advance.

###### Custom Tags Regular Expressions

###### Flagged Text Regular Expressions