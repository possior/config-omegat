[日本語](#オメガティー設定)｜[English](#omegat-configuration)｜[`uiLayout.xml`](../../source/.omegat/uiLayout.xml)

``` text
xml
└── VLDocking
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

オメガティーのギットハブ・リポジトリ：

- [omegat-org/omegat](https://github.com/omegat-org/omegat/)
- [omegat-org/omegat/test-acceptance/data/config/uiLayout.xml](https://raw.githubusercontent.com/omegat-org/omegat/master/test-acceptance/data/config/uiLayout.xml)

## 目次

- [基本構造](#基本構造)
- [各種設定](#各種設定)
  - [設定：`Dockable`](#設定dockable)
  - [設定：`Split`](#設定split)

## 基本構造

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<VLDocking version="2.1">
  <DockingDesktop name="">
    <DockingPanel x="0" y="0" width="1200" height="800">
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

`DockingPanel`要素を開始・終了する。パネルを縦`800`ピクセルで横`1200`ピクセルにして、左上の角の`x`座標を`0`に`y`座標を`0`に設定する。パネルに関する設定を格納する。

``` xml
<DockingPanel x="0" y="0" width="1200" height="800"><!-- パネルの設定 -->DockingPanel>
```

`Border`要素を開始・終了する。パネル下部のタブに関する設定を格納する。`zone`属性が何を意味するか不明。

``` xml
<Border zone="2"><!-- タブの設定 --></Border>
```

`TabGroups`要素を開始・終了する。何を設定する要素か不明。

``` xml
<TabGroups></TabGroups>
```

## 各種設定

###### 設定：`Dockable`

ペインを作成する。ペインの種類は`Key`要素で指定する。

``` xml
<Dockable><!-- key --></Dockable>
```

###### 設定：`Split`

パネルを分割する。水平方向に分割する場合は`orientation`を`0`に、垂直方向に分割する場合は`orientation`を`1`に設定する。又、分割する相対位置を`0`から`1`の尺度で`location`に指定する。

``` xml
<Split orientation="" location=""><!-- ペインの設定 --></Split>
```

# OmegaT Configuration

OmegaT's GitHub repository:

- [omegat-org/omegat](https://github.com/omegat-org/omegat/)
- [omegat-org/omegat/test-acceptance/data/config/uiLayout.xml](https://raw.githubusercontent.com/omegat-org/omegat/master/test-acceptance/data/config/uiLayout.xml)

## Table of Contents

- [Basic Structure](#basic-structure)
- [Various Settings](#various-settings)
  - [Setting: `Split`](#setting-split)

## Basic Structure

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<VLDocking version="2.1">
  <DockingDesktop name="">
    <DockingPanel x="0" y="0" width="1200" height="800">
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

XML declaration - declare that the file uses `xml` version `1.0` encoded in `UTF-8`.

``` xml
<?xml version="1.0" encoding="UTF-8"?>
``` 

Start and end the `VLDocking` element version `2.1`. `VLDocking` is a framework used in `java` applications.

``` xml
<VLDocking version="2.1"><!-- omegat configuration --></VLDocking>
```

Start and end the unnamed `DockingDesktop` element. This should define the window settings. It is uncertain whether the `name` attribute is necessary.

``` xml
<DockingDesktop name=""><!-- window settings --></DockingDesktop>
```

Start and end the `DockingPanel` element. Set the panel width to `1200` and height to `800`, and set the top-left corner at the coordinate `x` is `0` and `y` is `0`. It stores panel-related settings.

``` xml
<DockingPanel x="0" y="0" width="1200" height="800"><!-- panel settings -->DockingPanel>
```

Start and end the `Border` element. It stores settings related to tabs at the bottom of the panel. It is uncertain what the `zone` attribute mean.

``` xml
<Border zone="2"><!-- tab settings --></Border>
```
Start and end the `TabGroups` element. It is uncertain why this element exists here.

``` xml
<TabGroups></TabGroups>
```

## Various Settings

###### Setting: `Dockable`

Create a pane. Define the type by the `Key` element.

``` xml
<Dockable><!-- key --></Dockable>
```

###### Setting: `Split`

Split the panel. If you would like to split it horizontally, set `orientation` to `0`, and if vertically, to `1`. Also, set a relative location to split in a scale from `0` to `1`.

``` xml
<Split orientation="" location=""><!-- pane settings --></Split>
```