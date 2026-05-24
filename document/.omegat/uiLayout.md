[日本語](#オメガティー設定)｜[English](#omegat-configuration)｜[`uiLayout.xml`](../../source/.omegat/uiLayout.xml)

``` text
xml
└── VLDocking
    └── DockingDesktop
```

# オメガティー設定

オメガティーのギットハブ・リポジトリ：

- [omegat-org/omegat](https://github.com/omegat-org/omegat/)
- [omegat-org/omegat/test-acceptance/data/config/uiLayout.xml](https://raw.githubusercontent.com/omegat-org/omegat/master/test-acceptance/data/config/uiLayout.xml)

## 目次

- [基本構造](#基本構造)
- [各種設定](#各種設定)

## 基本構造

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<VLDocking version="2.1">
  <DockingDesktop name="">
    <DockingPanel x="0" y="0" width="1200" height="800">
      <!-- パネルの設定 -->
    </DockingPanel>
    <TabGroups>
    </TabGroups>
  </DockingDesktop>
</VLDocking>
```

ＸＭＬ宣言：`UTF-8`にエンコードした第`1.0`版`xml`を此ファイルで使用すると宣言する。

``` xml
<?xml version="1.0" encoding="UTF-8"?>
``` 

第`2.1`版の`VLDocking`要素を開始・終了する。`VLDocking`は`java`製品で用いられるフレームワークだ。

``` xml
<VLDocking version="2.1"><!-- オメガティーの設定 --></VLDocking>
```

無名の`DockingDesktop`要素を開始・終了する。ウィンドウ全体の設定と思われる。`name`属性が必要か要検討。

``` xml
<DockingDesktop name=""><!-- ウィンドウの定義 --></DockingDesktop>
```

## 各種設定

# OmegaT Configuration

- [omegat-org/omegat](https://github.com/omegat-org/omegat/)
- [omegat-org/omegat/test-acceptance/data/config/uiLayout.xml](https://raw.githubusercontent.com/omegat-org/omegat/master/test-acceptance/data/config/uiLayout.xml)

## Table of Contents

- [Basic Structure](#basic-structure)
- [Various Settings](#various-settings)

## Basic Structure

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<VLDocking version="2.1">
  <DockingDesktop name="">
    <DockingPanel x="0" y="0" width="1200" height="800">
      <!-- Panel Settings -->
    </DockingPanel>
    <TabGroups>
    </TabGroups>
  </DockingDesktop>
</VLDocking>
```

XML declaration - declare that the file uses `xml` version `1.0` encoded in `UTF-8`.

``` xml
<?xml version="1.0" encoding="UTF-8"?>
``` 

Start and end the `VLDocking` element version `2.1`. `VLDocking` is a framework used in `java` applications.

``` xml
<VLDocking version="2.1"><!-- OmegaT configuration --></VLDocking>
```

Start and end the unnamed `DockingDesktop` element. This should define the window settings. It is uncertain whether the `name` attribute is necessary.

``` xml
<DockingDesktop name=""><!-- window settings --></DockingDesktop>
```

## Various Settings