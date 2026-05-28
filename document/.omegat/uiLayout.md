[日本語](#オメガティー設定)｜[English](#omegat-configuration)｜[`uiLayout.xml`](../../source/.omegat/uiLayout.xml)

``` text
xml
VLDocking
└── DockingDesktop
    ├── DockingPanel
    │   └── Split
    │       └── Dockable
    │           └── Key
    ├── Border
    │   └── Dockable
    │       ├── Key
    │       └── RelativePosition
    └── TabGroups
```

# オメガティー設定

オメガティーのギットハブ・リポジトリ（外部リポジトリ）：

- [omegat-org/omegat](https://github.com/omegat-org/omegat/)
- [omegat-org/omegat/test-acceptance/data/config/uiLayout.xml](https://raw.githubusercontent.com/omegat-org/omegat/master/test-acceptance/data/config/uiLayout.xml)

## 目次

- [基本構造](#基本構造)
- [各種設定](#各種設定)
  - [境界](#境界)
  - [相対位置](#相対位置)
  - [ペイン](#ペイン)
  - [ペイン名](#ペイン名)

## 基本構造

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<VLDocking version="2.1">
  <DockingDesktop name="">
    <DockingPanel x="" y="" width="" height="">
      <!-- パネルの設定 -->
    </DockingPanel>
    <Border zone="2">
      <!-- タブの設定 -->
    </Border>
    <TabGroups>
    </TabGroups>
  </DockingDesktop>
</VLDocking>
```

ＸＭＬ宣言：`UTF-8`で符号化された第`1.0`版の`xml`形式である事を宣言する。

``` xml
<?xml version="1.0" encoding="UTF-8"?>
``` 

第`2.1`版の`VLDocking`要素。`VLDocking`は`java`製品で用いられるフレームワークだ。

``` xml
<VLDocking version="2.1"><!-- オメガティーの設定 --></VLDocking>
```

無名の`DockingDesktop`要素。オメガティーのウィンドウ全体の設定（要検証）。

``` xml
<DockingDesktop name=""><!-- ウィンドウの設定 --></DockingDesktop>
```

左上の角はＸ座標が`x`でＹ座標が`y`の点で、横が`width`ピクセルで縦が`height`ピクセルのパネルを作成する、`DockingPanel`要素。

``` xml
<DockingPanel x="" y="" width="" height=""><!-- パネルの設定 --></DockingPanel>
```

パネル下部のタブに関する設定を格納する`Border`要素。

``` xml
<Border zone="2"><!-- タブの設定 --></Border>
```

`TabGroups`要素。何を設定する要素か不明である。

``` xml
<TabGroups></TabGroups>
```

## 各種設定

###### 境界

パネルを分割する。水平方向に分割する場合は`orientation`を`0`に、垂直方向に分割する場合は`orientation`を`1`に設定する。又、分割する相対位置を`0`から`1`の尺度で`location`に指定する。

``` xml
<Split orientation="" location=""><!-- ペインの設定 --></Split>
```

###### 相対位置

下部のバーのタブの相対位置を設定する。

``` xml
<RelativePosition x="" y="" w="" h=""/>
```

###### ペイン

ペインを作成する。ペインの種類は`Key`要素で指定する。

``` xml
<Dockable><!-- key要素 --></Dockable>
```

###### ペイン名

ペインの種類を設定する。ペインには、コメント（`COMMENTS`）、辞書（`DICTIONARY`）、編集（`EDITOR`）、用語集（`GLOSSARY`）、機械翻訳（`MACHINE_TRANSLATE`）、参考訳文（`MATCH`）、メモ帳（`NOTES`）、複数訳文（`MULTIPLE_TRANS`）、及び文節属性（`SEGMENTPROPERTIES`）が在る。

``` xml
<Key dockName=""/>
``` 

# OmegaT Configuration

OmegaT's GitHub repository (external repository):

- [omegat-org/omegat](https://github.com/omegat-org/omegat/)
- [omegat-org/omegat/test-acceptance/data/config/uiLayout.xml](https://raw.githubusercontent.com/omegat-org/omegat/master/test-acceptance/data/config/uiLayout.xml)

## Table of Contents

- [Basic Structure](#basic-structure)
- [Various Settings](#various-settings)
  - [Pane](#pane)
  - [Pane Name](#pane-name)
  - [Border](#border)
  - [Relative Position](#relative-position)

## Basic Structure

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<VLDocking version="2.1">
  <DockingDesktop name="">
    <DockingPanel x="" y="" width="" height="">
      <!-- panel settings -->
    </DockingPanel>
    <Border zone="2">
      <!-- tab settings -->
    </Border>
    <TabGroups>
    </TabGroups>
  </DockingDesktop>
</VLDocking>
```

XML declaration: declare to use the `xml` format version `1.0` encoded in `UTF-8`.

``` xml
<?xml version="1.0" encoding="UTF-8"?>
``` 

The `VLDocking` element version `2.1`. `VLDocking` is a framework used in `java` applications.

``` xml
<VLDocking version="2.1"><!-- omegat settings --></VLDocking>
```

The unnamed `DockingDesktop` element. This defines the OmegaT window settings (require validation).

``` xml
<DockingDesktop name=""><!-- window settings --></DockingDesktop>
```

The `DockingPanel` element that spawns a panel whose top-left corner's x coordinate is `x` and y is `y` and whose width is `width` and height is `height`.

``` xml
<DockingPanel x="" y="" width="" height=""><!-- panel settings --></DockingPanel>
```

The `Border` element that stores settings related to tabs at the bottom of the panel.

``` xml
<Border zone="2"><!-- tab settings --></Border>
```
The `TabGroups` element. It is uncertain why this element exists here.

``` xml
<TabGroups></TabGroups>
```

## Various Settings

###### Border

Split the panel. If you would like to split it horizontally, set `orientation` to `0`, and if vertically, to `1`. Also, set a relative location to split in a scale from `0` to `1`.

``` xml
<Split orientation="" location=""><!-- pane settings --></Split>
```

###### Pane

Create a pane. Define the type by the `Key` element.

``` xml
<Dockable><!-- key --></Dockable>
```

###### Pane Name

Set the type of the pane. There are comments (`COMMENTS`), dictionaries (`DICTIONARIES`), editor (`EDITOR`), glossaries (`GLOSSARIES`), machine translations (`MACHINE_TRANSLATE`), fuzzy matches (`MATCH`), notepad (`NOTES`), multiple translations (`MULTIPLE_TRANS`), segment properties (`SEGMENTPROPERTIES`) panes.

``` xml
<Key dockName=""/>
``` 

###### Relative Position

Set the relative position of a tab in the bar at the bottom.

``` xml
<RelativePosition x="" y="" w="" h=""/>
```