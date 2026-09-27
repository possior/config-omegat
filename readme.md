[日本語](#omegatの設定)｜[English](#omegat-configuration)

# OmegaTの設定

使い回しのオメガティーの設定ファイル。

## 目次

- [利用許諾（CC0、0BSD）](./license.md)
- [バージョン情報](./version.md)
- [OmegaTの設定を適用](#omegatの設定を適用)
- 技術文書
  - [`omegat.prefs`](./doc/omegat.prefs.md)
  - [`uiLayout.xml`](./doc/uiLayout.xml.md)

## OmegaTの設定を適用

最新版の設定を適用するためには以下の命令文を実行すること。以下のフラッグやオプションをその命令文に続けて付すことで、挙動を調整することができる。

- `-c`, `--cfg`, `--config`, `--config-dir`：設定ディレクトリを指定する。
- `-o`, `--overwrite`：設定ファイルが既に存在する場合は上書きする。
- `-p`, `--preserve`：設定ファイルが既に存在する場合は上書きしない。

```bash
curl -fsSL https://raw.githubusercontent.com/possior/config-omegat/default/installer.sh | bash -s -- 
```

# OmegaT Configuration

OmegaT configuration files that I reuse.

## List of Contents

- [License (CC0, 0BSD)](./license.md)
- [Version Information](./version.md)
- [Applying OmegaT Configuration](#applying-omegat-configuration)
- Technical Documents
  - [`omegat.prefs`](./doc/omegat.prefs.md)
  - [`uiLayout.xml`](./doc/uiLayout.xml.md)

## Applying OmegaT Configuration

To apply the latest configuration, execute the following command. You can modify the behavior by adding the following flags and options after the command.

- `-c`, `--cfg`, `--config`, `--config-dir`: specify the configuration directory.
- `-o`, `--overwrite`: overwrite if configuration files already exist.
- `-p`, `--preserve`: don't overwrite if configuration files already exist.

```bash
curl -fsSL https://raw.githubusercontent.com/possior/config-omegat/default/installer.sh | bash -s -- 
```