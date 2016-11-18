# Atom導入

## 1.インストール
[https://atom.io/](https://atom.io/)よりダウンロードする。

## 2.初期設定
### 2.1.エディタ設定
`Ctrl+,`で設定画面を開き、以下の設定にする

| 設定名            | 設定値(Windows)  | 設定値(MacOS X)        |
|-------------------|------------------|------------------------|
| Auto Indent       | チェックを入れる | チェックを入れる       |
| Font Familly      | "Migu 1M"(※1)    | SourceHanCodeJP-Normal(※2) |
| Font Size         | 13               | 14                     |
| Tab Length        | 4                | 4                      |
| Show Indent Guide | チェックを入れる | チェックを入れる       |
| Show Invisibles   | チェックを入れる | チェックを入れる       |
| Soft Wrap         | チェックを入れる | チェックを入れる       |

※1 [http://mix-mplus-ipa.osdn.jp/migu/](http://mix-mplus-ipa.osdn.jp/migu/)  
※2 [https://github.com/adobe-fonts/source-han-code-jp](https://github.com/adobe-fonts/source-han-code-jp)

### 2.2.Proxy設定
以下のコマンドを実行する

```
$> apm config set https-proxy (proxy url)
```

### 2.3.パッケージインストール設定
#### Windowsの場合
Windowsでパッケージをインストールするには以下のツールを入れておく必要がある。  
現在どのパッケージが入っているかは、`apm -v`で確認できる。  
参照：[https://atom.io/docs/v0.186.0/build-instructions/windows](https://atom.io/docs/v0.186.0/build-instructions/windows)
* Visual Studio
  * 2010以降。C++ビルドに使用する
* node.js
  * v0.10.x、v0.12.xのいずれか
  * is.js(1.x)でもよい
* Python
  * v2.7.x
* git
  * GitHub for Windows、msysgitのいずれか

```
$> apm -v
apm  1.0.1
npm  2.5.1
node 0.10.35
python 2.7.10k
git 1.9.4.msysgit.0
visual studio 2013
```

パッケージのインストールに失敗し、以下のメッセージが出る場合は、パッケージダウンロード先URLが302リダイレクトされる場合の設定をする必要がある。

```
$> apm install --check
gyp info it worked if it ends with ok
gyp info using node-gyp@1.0.2
gyp info using node@0.10.35 | win32 | ia32
gyp http GET https://atom.io/download/atom-shell/v0.22.0/node-v0.22.0.tar.gz
gyp WARN install got an error, rolling back install
gyp
```

```
$> set ATOM_NODE_URL=http://gh-contractor-zcbenz.s3.amazonaws.com/atom-shell/dist
```

参照：[Installing packages fails every time · Issue #384 · atom/apm](https://github.com/atom/apm/issues/384)

### Macの場合
基本的にWindowsと同様。

```
$> apm -v
apm  1.0.1
npm  2.5.1
node 0.10.35
python 2.7.5
git 1.9.3
```

### 2.4.Markdown Previewフォント
* デフォルトは中華なので直す
* `ctrl+,`で設定画面を開く
* [Open Config Folder]から`style.less`をこちらの設定([Windows](https://github.com/mapserver2007/atom-settings/blob/master/windows/style.less),[Mac](https://github.com/mapserver2007/atom-settings/blob/master/mac/style.less))に差し替える
  * Windowsの場合、フォントは「Consolas」、Macの場合、フォントは「Hiragino Kaku Gothic ProN」にする
    * 日本語フォントはWindows、Macともにメイリオ
* この設定でやっていること
  - Markdownのフォント、ツリーメニューのフォントを変更
  - 非選択タブの色を半透明
* 編集が終わったらAtomを再起動する

### 2.5.末尾のホワイトスペース削除
`Ctrl+,`で設定画面を開き、[Packages]から`whitespace`のSettingsを開く。  
「Ignore Whitespace Current Line」をOFFにすると保存時に末尾の余計なホワイトスペースを削除してくれる。

## 3.インストールパッケージ
以下のパッケージをインストールする
* [japanese-menu](https://atom.io/packages/japanese-menu)
  * 日本語化する
* [trailling-spaces](https://atom.io/packages/trailing-spaces)
  * 末尾のスペースをハイライトする
    * 「Enable For Cursor Lines」のチェックは外す
      * 現在のカーソル位置のスペースはハイライトさせない
    * 「Enable For Identation」のチェックを入れる
      * 空行のインデントをハイライトする
* [jquery-snippets](https://atom.io/packages/jquery-snippets)
  * jQueryのコード補完をする
* [local-history](https://atom.io/packages/local-history)
  * ローカルに履歴を残す
* [highlight-selected](https://atom.io/packages/highlight-selected)
  * 選択した語をハイライトする
* [highlight-line](https://atom.io/packages/highlight-line)
  * 現在の行をハイライトする
* [show-ideographic-space](https://atom.io/packages/show-ideographic-space)
  * 全角スペースを表示する
* [language-asp](https://atom.io/packages/language-asp)
  * Classic ASPのシンタックスハイライト
* [japanese-wrap](https://atom.io/packages/japanese-wrap)
  * 日本語の自動折り返し
* [file-icons](https://atom.io/packages/file-icons)
  * アイコンを豪華にする
* [script](https://atom.io/packages/script)
  * 各種スクリプトをその場で実行する
* [open-recent](https://atom.io/packages/open-recent)
  * 最近開いたファイル、フォルダをFileメニューから開けるようにする
* [symbols-tree-view](https://atom.io/packages/symbols-tree-view)
  * 関数などのシンボルのツリーを表示する
* [docblockr](https://atom.io/packages/docblockr)
  * docコメント補完
* [emmet](https://atom.io/packages/emmet)
  * HTML、CSSの補完を行う
* [term2](https://atom.io/packages/term2)
  * Atom上でターミナルを動かす
* [useful-context-menu](https://atom.io/packages/useful-context-menu)
  * SublimeTextにある便利なコンテキストメニューを使えるようにする
* [pretty-json](https://atom.io/packages/pretty-json)
  * JSONを整形する
* [linter](https://atom.io/packages/linter)
  * 各言語用のLintパッケージ
* [linter-php](https://atom.io/packages/linter-php)
* [linter-phpmd](https://atom.io/packages/linter-phpmd)
  * composerの`phpmd`が必要
    * `$> composer global install phpmd/phpmd`
  * linter-phpmdの設定を以下のように行う(それ以外はデフォルト値)
    * Phpmd Executable Path
      * phpmdのパスを設定
      * 例：`/Users/mapserver2007/.composer/vendor/bin/phpmd`
* [linter-phpcs](https://atom.io/packages/linter-phpcs)
  * composerの`php_codesniffer`が必要
    * `$> composer global install squizlabs/php_codesniffer`
  * linter-phpcsの設定を以下のように行う(それ以外はデフォルト値)
    * Phpcs Executable Path
      * phpcsのパスを設定
      * 例：`/Users/mapserver2007/.composer/vendor/bin/phpcs`
* [phpcs-fixer](https://atom.io/packages/php-cs-fixer)
  * Composerの`php-cs-fixer`が必要
    * `$> composer global require fabpot/php-cs-fixer`
    * `~/.composer/vendor/bin`にパスを通す
* [autocomplete-php](https://atom.io/packages/autocomplete-php)
  * PHP関数の補完を行う
* [linter-jshint](https://atom.io/packages/linter-jshint)
  * JavaScriptとJSONのLintを実行する
  * JSLintがない場合、インストールする
    * `$> npm install -g jshint`
* [linter-ruby](https://atom.io/packages/linter-ruby)
  * RubyのLintを実行する
  * linter-rubyの設定を以下のようにおkなう
  * Ruby Executable Path
    * 例：`/Users/mapserver2007/.rbenv/shims/ruby`
* [autocomplete-ruby](https://atom.io/packages/autocomplete-ruby)
  * Rubyのメソッドをの補完を行う
* [language-docker](https://atom.io/packages/language-docker)
  * Dockerfileのハイライトを行う

## 4.キーバインド設定
キーバインドは以下のとおり([Windows](https://github.com/mapserver2007/atom-settings/blob/master/windows/keymap.cson),[Mac](https://github.com/mapserver2007/atom-settings/blob/master/mac/keymap.cson))  
(ただし、Macキーバインドは、CtrlとCmdを予め入れ替えていることを前提)

| 内容 | キーバインド(Windows) | キーバインド(MacOS X) |
|----------------------------|-----------------------|-----------------------|
| 設定画面を開く | Ctrl+, | Cmd+, |
| Markdownプレビュー | Ctrl+Shift+m | Cmd+Shift+m |
| 文字コード変換パレット表示 | Ctrl+Shift+u | Cmd+Shift+u |
| 削除 | Ctrl+d | Cmd+d |
| ファイルクイックオープン | Ctrl+t | Cmd+t |
| 指定行へジャンプ | Ctrl+l | Cmd+l |
| 選択語で次を検索 | Ctrl+i | Cmd+i |
| 選択語で前を検索 | Ctrl+Shift+i | Cmd+Shift+i |
| 次のタブへ | Ctrl+Pagedown | Cmd+Alt+right |
| 前のタブへ | Ctrl+Pageup | Cmd+Alt+left |
| Markdownプレビュー | Ctrl+Shift+m | Cmd+m |
