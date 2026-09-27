[日本語](#omegatの設定)｜[English](#omegat-configuration)

# OmegaTの設定

使い回しのオメガティーの設定ファイル。

## 目次

- [利用許諾（CC0、0BSD）](./license.md)
- [バージョン情報](./version.md)
- [OmegaTの設定を適用](#omegatの設定を適用)
- [OmegaTの挙動を設定](#omegatの挙動を設定)
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

## OmegaTの挙動を設定

Linuxの場合は任意で`omegat`のスクリプトを編集すること。なお、スクリプトの位置は`which omegat`を実行すると得られる。また、編集には`sudo`を使用する必要がある。以下のスクリプトが編集例であり、3行目を`java -jar -Xmx1024M OmegaT.jar "$@"`から`java -jar -Xmx8192M OmegaT.jar --config-dir=$HOME/.config/omegat/ "$@"`に変更している。その`-Xmx8192M`フラッグはメモリを`8GiB`だけ使用することを、`--config-dir=$HOME/.config/omegat/`オプションは設定ディレクトリに`$HOME/.config/omegat/`を使用することを意味している。

```sh
#!/bin/sh
cd /usr/share/java/omegat/
java -jar -Xmx8192M OmegaT.jar --config-dir=$HOME/.config/omegat/ "$@"
```

# OmegaT Configuration

OmegaT configuration files that I reuse.

## List of Contents

- [License (CC0, 0BSD)](./license.md)
- [Version Information](./version.md)
- [Applying OmegaT Configuration](#applying-omegat-configuration)
- [Configuring OmegaT's Behavior](#configuring-omegats-behavior)
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

## Configuring OmegaT's Behavior

If you are using Linux, edit the `omegat` script optionally. Execute `which omegat` to obtain the location of that script, and use `sudo` for editing. The script below is an example, where the third line is modified from `java -jar -Xmx1024M OmegaT.jar "$@"` to `java -jar -Xmx8192M OmegaT.jar --config-dir=$HOME/.config/omegat/ "$@"`. The `-Xmx8192M` flag means using `8GiB` of memory, while the `--config-dir=$HOME/.config/omegat/` option specifies `$HOME/.config/omegat/` as the configuration directory.

```sh
#!/bin/sh
cd /usr/share/java/omegat/
java -jar -Xmx8192M OmegaT.jar --config-dir=$HOME/.config/omegat/ "$@"
```