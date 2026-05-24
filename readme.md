[日本語](#オメガティーの設定)｜[English](#omegat-configuration)

# オメガティーの設定

使い回しのオメガティーの設定ファイル。

## 目次

- [実装方法](#実装方法)
- [公開版一覧](#公開版一覧)

## 実装方法

以下の命令文で最新版の設定を実装できる。

``` bash
curl -sL https://raw.githubusercontent.com/possior/config-omegat/default/installer.sh | bash -s 
```

実装方法を変更する場合は、此の命令文に続けて選択肢を付す事。

- `-d` `--default`<br>【危険】各設定ファイルを実装するかプロンプトしない。既存の設定を上書きする可能性が有る。
- `-o` `--os` `--operating-system` `--system`<br>実装先のＯＳを指定する。`arch`系統のＯＳが標準で選択されて居る。
- `-v` `--ver` `--version`<br>実装する版号を指定する。[ブランチ](https://github.com/possior/config-omegat/branches/)でも[タグ](https://github.com/possior/config-omegat/tags/)でも指定できる。

## 公開版一覧

別ファイル（[`version.md`](./version.md)）を参照せよ。

# OmegaT Configuration

OmegaT configuration files that I reuse.

## List of Contents

- [How to Install](#how-to-install)
- [List of Versions](#list-of-versions)

## How to Install

Install the latest configuration using the following command.

``` bash
curl -sL https://raw.githubusercontent.com/possior/config-omegat/default/installer.sh | bash -s 
```

To change the implementation method, add options listed below to this command.

- `-d` `--default`<br>【危険】各設定ファイルを実装するかプロンプトしない。既存の設定を上書きする可能性が有る。
- `-o` `--os` `--operating-system` `--system`<br>実装先のＯＳを指定する。`arch`系統のＯＳが標準で選択されて居る。
- `-v` `--ver` `--version`<br>実装する版号を指定する。[ブランチ](https://github.com/possior/config-omegat/branches/)でも[タグ](https://github.com/possior/config-omegat/tags/)でも指定できる。

## List of Versions

Reference another file ([`version.md`](./version.md)).
