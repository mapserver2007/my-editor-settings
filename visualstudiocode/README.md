# Visual Studio Code 設定

## インストール
* Visual Studio Code 1.19.3をインストールする
    * VSCode 1.20以降はXdebugがうまく動かないためインストールしない

## キーバインド
| 項目名                               | 変更前        | 変更後           | 内容                                 |
|--------------------------------------|---------------|------------------|--------------------------------------|
| editor.action.deleteLines            | ctrl+shift+k  | ctrl+d           | 行を削除                             |
| markdown.showPreview                 | ctrl+shift+v  | ctrl+m           | Markdownプレビュー                   |
| markdown.showPreviewToSide           | ctrl+k v      | ctrl+shift+m     | Markdownプレビュー(サイドウィンドウ) |
| workbench.action.gotoLine            | ctrl+g        | ctrl+l           | 指定行へジャンプ                     |
| workbench.action.nextEditor          | ctrl+pagedown | ctrl+shift+right | 次のタブへ                           |
| workbench.action.previousEditor      | ctrl+pageup   | ctrl+shift+left  | 前のタブへ                           |
| -                                    | ctrl+/        | -                | コメントアウト/コメントアウト解除    |
| workbench.action.quickOpen           | ctrl+p        | -                | ファイルクイックオープン             |
| workbench.action.closeActiveEditor   | ctrl+w        | -                | ファイルクローズ                     |
| editor.action.startFindReplaceAction | ctrl+h        | ctrl+r           | 置換                                 |

### 拡張インストール
Visual Studio Codeに以下の拡張をインストールする

* PHP Debug
* PHP IntelliSense
* Ruby
* Zenkaku
* vscode-icons
* Bookmarks
* Bracket Pair Colorizer

## 基本設定
[ファイル]→[基本設定]→[設定]を開き、以下を追記する

* "editor.minimap.enabled": false
    * ミニマップを非表示
* "editor.renderIndentGuides": true
    * インデントガイドを表示(デフォルト設定済み)
* "editor.renderWhitespace": "boundary"
    * 半角スペースをハイライト
* "window.title": "${dirty}${activeEditorMedium}${separator}${rootName}${separator}${appName}"
    * タイトルバーにファイルのフルパスを表示
* "files.trimTrailingWhitespace": true
    * 保存時に不要なスペースを削除
* "files.associations": { "Vagrantfile":"ruby" }
    * VagrantfileをRubyに関連付ける

## PHP設定

### VSCode設定
[ファイル]→[基本設定]→[設定]を開き、以下を追記する

#### Windows
```
"php.validate.executablePath": "C:\\php-7.2.2\\php.exe",
"php.executablePath": "C:\\php-7.2.2\\php.exe",
```

#### Mac
```
"php.validate.executablePath": "/Users/(UserName)/.phpenv/versions/7.2.3/bin/php",
"php.executablePath": "/Users/(UserName)/.phpenv/versions/7.2.3/bin/php",
```

### PHPインストール

### Windows
* https://windows.php.net/download/ から`PHP7.2 non thread safe`をダウンロード
* `C:\php-7.2.2`に配置し、パスを通す
* `php.ini-production`を`php.ini`にリネームし、`C:\php-7.2.2`に配置する

### Mac
* phpenv経由でPHPをインストールする

### リモートデバッグ設定
* Vagrant上のCentOS7にPHP、xdebugがインストールしておく
* `/etc/php.d/15-xdebug.ini`を編集する
    * xdebug.remote_autostart = 1
    * xdebug.remote_enable = 1
    * xdebug.remote_port = 8000
    * xdebug.remote_host = (ローカルマシンのIPアドレス)

* VSCodeのデバッグ設定は以下のようにする

```
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Listen for XDebug",
            "type": "php",
            "request": "launch",
            "log": true,
            "pathMappings": {
                "/workspace": "${workspaceRoot}"
            },
            "port": 8000
        }
    ]
}
```