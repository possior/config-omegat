[日本語](#オメガティー設定)｜[English](#omegat-configuration)｜[`omegat.xml`](../../source/.omegat/omegat.xml)

``` text
xml
└── omegat
    └── preference
        ├── tagValidateOnLeave
        ├── tagValidation_customPattern
        └── tagValidation_removePattern
```

# オメガティー設定

オメガティーのギットハブ・リポジトリ：

- [omegat-org/omegat](https://github.com/omegat-org/omegat/)
- [omegat-org/omegat/test-acceptance/data/config/omegat.prefs](https://raw.githubusercontent.com/omegat-org/omegat/master/test-acceptance/data/config/omegat.prefs)

## 目次

- [基本構造](#基本構造)
- [各種設定](#各種設定)
  - [設定：`tagValidateOnLeave`](#設定tagvalidateonleave)
  - [設定：`tagValidation_customPattern`](#設定tagvalidation_custompattern)
  - [設定：`tagValidation_removePattern`](#設定tagValidation_removePattern)
- [正規表現](#正規表現)

## 基本構造

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<omegat>
  <preference version="1.0">
    <!-- オメガティーの設定 -->
  </preference>
</omegat>
```

ＸＭＬ宣言：`UTF-8`にエンコードした第`1.0`版`xml`を此ファイルで使用すると宣言する。

``` xml
<?xml version="1.0" encoding="UTF-8"?>
```

オメガティーの設定を格納する`omegat`要素を開始・終了する。

``` xml
<omegat><!-- オメガティーの設定 --></omegat>
```

オメガティーの設定を格納する第`1.0`版の`preference`要素を開始・終了する。

``` xml
<preference version="1.0"><!-- オメガティーの設定 --></preference>
```

## 各種設定

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

## 正規表現

# OmegaT Configuration

OmegaT's GitHub repository:

- [omegat-org/omegat](https://github.com/omegat-org/omegat/)
- [omegat-org/omegat/test-acceptance/data/config/omegat.prefs](https://raw.githubusercontent.com/omegat-org/omegat/master/test-acceptance/data/config/omegat.prefs)

## Table of Contents

- [Basic Structure](#basic-structure)
- [Various Settings](#various-settings)
  - [Setting: `tagValidateOnLeave`](#setting-tagvalidateonleave)
  - [Setting: `tagValidation_customPattern`](#setting-tagvalidation_custompattern)
  - [Setting: `tagValidation_removePattern`](#setting-tagvalidation_removepattern)
- [Regular Expression](#regular-expression)

## Basic Structure

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<omegat>
  <preference version="1.0">
    <!-- OmegaT preferences -->
  </preference>
</omegat>
```

XML declaration - declare that the file uses `xml` version `1.0` encoded in `UTF-8`.

``` xml
<?xml version="1.0" encoding="UTF-8"?>
```

Start and end the `omegat` element that contains OmegaT configuration.

``` xml
<omegat><!-- OmegaT configuration --></omegat>
```

Start and end the `preference` element that contains OmegaT preferences version `1.0`.

``` xml
<preference version="1.0"><!-- OmegaT preferences --></preference>
```

## Various Preferences

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

## Regular Expression