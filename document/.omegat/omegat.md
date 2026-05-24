[日本語](#オメガティー設定)｜[English](#omegat-configuration)｜[`omegat.xml`](../../source/.omegat/omegat.xml)

``` text
xml
└── omegat
    └── preference
```

# オメガティー設定

オメガティーのギットハブ・リポジトリ：

- [omegat-org/omegat](https://github.com/omegat-org/omegat/)
- [omegat-org/omegat/test-acceptance/data/config/omegat.prefs](https://raw.githubusercontent.com/omegat-org/omegat/master/test-acceptance/data/config/omegat.prefs)

## 目次

- [基本構造](#基本構造)
- [各種設定](#各種設定)
  - [設定：`tagValidation_customPattern`](#設定tagValidation_customPattern)

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

###### 設定：`tagValidation_customPattern`

# OmegaT Configuration

OmegaT's GitHub repository:

- [omegat-org/omegat](https://github.com/omegat-org/omegat/)
- [omegat-org/omegat/test-acceptance/data/config/omegat.prefs](https://raw.githubusercontent.com/omegat-org/omegat/master/test-acceptance/data/config/omegat.prefs)

## Table of Contents

- [Basic Structure](#basic-structure)
- [Various Settings](#various-settings)
  - [Setting: `tagValidation_customPattern`](#setting-tagValidation_customPattern)

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

###### Setting: `tagValidation_customPattern`
