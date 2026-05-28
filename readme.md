[日本語](#オメガティーの設定)｜[English](#omegat-configuration)

# オメガティーの設定

使い回しのオメガティーの設定ファイル。

## 目次

- [適用方法](#適用方法)
- [説明書](#説明書)
- [公開版一覧](#公開版一覧)

## 適用方法

以下の命令文で最新版の設定を適用できる。

``` bash
bash <(curl -sL https://raw.githubusercontent.com/possior/config-omegat/default/installer.sh)
```

適用方法を変更する場合は、此の命令文に続けて選択肢を付す事。

- `-d` `--default`<br>【**危険**】各設定ファイルを実装するかプロンプトしない。既存の設定を上書きする可能性が有る。
- `-o` `--os` `--operating-system` `--system`<br>実装先のＯＳを指定する。`arch`系統のＯＳが標準で選択されて居る。
- `-v` `--ver` `--version`<br>実装する版号を指定する。[ブランチ](https://github.com/possior/config-omegat/branches/)でも[タグ](https://github.com/possior/config-omegat/tags/)でも指定できる。

## 説明書

- [`omegat.prefs`](./document/.omegat/omegat.md)
- [`uiLayout.xml`](./document/.omegat/uiLayout.md)

## 公開版一覧

[`version.md`](./version.md)を参照せよ。

# OmegaT Configuration

OmegaT configuration files that I reuse.

## List of Contents

- [How to Apply](#how-to-apply)
- [Manuals](#manuals)
- [List of Versions](#list-of-versions)

## How to Apply

Apply the latest configuration using the following command.

``` bash
bash <(curl -sL https://raw.githubusercontent.com/possior/config-omegat/default/installer.sh)
```

To change the implementation method, add options listed below to this command.

- `-d` `--default`<br>[**WARNING**] install each configuration file without prompting your decision. This may override the existing configuration.
- `-o` `--os` `--operating-system` `--system`<br>Specify the OS to install on. The default OS is Arch-based.
- `-v` `--ver` `--version`<br>Specify the version number to install. You can specify either a [branch](https://github.com/possior/config-omegat/branches/) or [tag](https://github.com/possior/config-omegat/tags/).

## Manuals

- [`omegat.prefs`](./document/.omegat/omegat.md)
- [`uiLayout.xml`](./document/.omegat/uiLayout.md)

## List of Versions

Reference [`version.md`](./version.md).
