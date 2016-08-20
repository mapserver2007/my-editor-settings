# Sublime Text2 導入メモ

## Index
1. [導入](#section1)  
2. [設定](#section2)  
3. [拡張](#section3)  

## <a name="section1">1.導入</a>

### 1.1.Sublime Text2インストール
[http://www.sublimetext.com/2](http://www.sublimetext.com/2)

### 1.2.日本語化
[http://blog.huwy.org/article/292827228.html](http://blog.huwy.org/article/292827228.html)

### 1.3.Package Controlインストール
「表示」→「コンソール」でコンソールを開き、以下のコードを貼り付けて実行する。

    import urllib2,os; pf='Package Control.sublime-package';ipp=sublime.installed_packages_path(); os.makedirs(ipp) if not os.path.exists(ipp) else None; urllib2.install_opener(urllib2.build_opener(urllib2.ProxyHandler({'http': 'http://proxy.coreprice.com:8080'}))); open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read()); print 'Please restart Sublime Text to finish installation'

### 1.4.Package Controlで拡張をインストール
`Ctrl+Shift+p`で検索ウインドウが表示されるので`Install Packages`と入力する。 
インストールしたい拡張を検索して選択する。

### 1.5.Package Controlを使わずに拡張をインストール
Package Controlでインストール出来ない場合、検索に引っかからなかった場合は直接githubからソースを取得してインストールする。 
インストールにはgitが必要なので予めインストールしておくこと。 
(大抵の拡張はgithubに登録してある)

**Windowsの場合** 

`C:\Users\(ユーザ名)\AppData\Roaming\Sublime Text 2\Packages`に移動し、インストールしたいソースをgit cloneする。 

**Macの場合** 

`/Users/(ユーザ名)/Library/Application Support/Sublime Text 2/Packages/`に移動し、インストールしたいソースをgit cloneする。 

## <a name="section2">2.設定</a>

### 2.1.タブ幅の設定
一般的に言語ごとにタブ幅が異なるので、分けて設定する。 

**Ruby(スペース2幅)**

`Preference→基本設定 拡張→シンタックス指定 - ユーザ`で新規ファイルを開く。 
以下の内容を記述してファイル名を`Ruby.sublime-settings`で保存すると、.rb,Rakefileなどがスペース2幅のインデントになる。 

**Ruby.sublime-settings**

```json
{
    "tab_size": 2,
    "translate_tabs_to_spaces": true 
}
```
※Macでは不要かもしれない。Windowsでは必要だった。

### 2.2.初期設定、キーバインドを設定する
初期設定とキーバインドを変更する(Preference→基本設定 - ユーザ、Preference→キーバインド - ユーザ)。 
※Macではctrlをcommandに置き換える。 

*Mac*  
[https://github.com/mapserver2007/sublime-settings/tree/master/mac](https://github.com/mapserver2007/sublime-settings/tree/master/mac)

*Windows*  
[https://github.com/mapserver2007/sublime-settings/tree/master/windows](https://github.com/mapserver2007/sublime-settings/tree/master/windows)

### 2.3.IMEの切り替えを解除する
MacにGoogle日本語をいれている場合、`command+space`でIMEの切り替えが実行される。オートコンプリート拡張でコード補完する場合、Windows同様のキーバインド(デフォルトは`ctrl+space`)にすると競合する。そこで`command+space`でIMEの切り替えが起きないようにしておく。  

**設定方法**  
`システム環境設定`→`言語とテキスト`→`入力ソース`→入力ソースのショートカットの`キーボードショートカット`ボタン→`キーボードと文字入力`→`前の入力ソースを選択`を未選択にする。

## <a name="section3">3.拡張</a>
### 3.1.拡張のインストール

Package Controlかgithubから入手する。 

**ConvertToUTF8** - Shift_JISのファイルでも文字化けせずに編集可能。  
[https://github.com/seanliang/ConvertToUTF8](https://github.com/seanliang/ConvertToUTF8)

**jQuery** - jQueryのコード補完。  
[https://github.com/mrmartineau/jQuery](https://github.com/mrmartineau/jQuery)

**IMESupport for Sublime Text** - IMEの入力位置を補正してくれる。Google日本語入力のTab補完もできるようになる。Windowsのみ。  
[https://github.com/chikatoike/IMESupport](https://github.com/chikatoike/IMESupport)

**VBScript** - VBScriptのシンタックスハイライト。  
[https://github.com/SublimeText/VBScript](https://github.com/SublimeText/VBScript)

**TrailingSpaces** - 行末の余計なスペースをハイライト、削除する。  
[https://github.com/SublimeText/TrailingSpaces](https://github.com/SublimeText/TrailingSpaces)

**LocalHistory** - ローカル環境に編集履歴を持てる。Diffを取ることも可能。  
[https://github.com/vishr/local-history](https://github.com/vishr/local-history)

**SimpleClone** - タブを複製。  
[https://github.com/mikefowler/simple-clone](https://github.com/mikefowler/simple-clone)

**ASPComment** - ASP,VBSのコメントアウトが使用可能。  
[https://github.com/danielsd/ASPComment](https://github.com/danielsd/ASPComment)

**Markdown Preview** - Markdownのプレビューを行う。  
[https://github.com/revolunet/sublimetext-markdown-preview](https://github.com/revolunet/sublimetext-markdown-preview)
[http://www.bram.us/2013/02/08/sublime-text-markdown-syntax-highlighting/](http://www.bram.us/2013/02/08/sublime-text-markdown-syntax-highlighting/)

**SublimeLinter** - SublimeText2上でLintを実行する。  
[https://github.com/SublimeLinter/SublimeLinter](https://github.com/SublimeLinter/SublimeLinter)

**WebSearch** - SublimeText2上からWeb検索を実行する。Milkodeと連携するのに使用する。  
[https://github.com/catalinc/WebSearch](https://github.com/catalinc/WebSearch)

**MacTerminal** - SublimeText2からターミナルで開く。  
[https://github.com/afterdesign/MacTerminal](https://github.com/afterdesign/MacTerminal)

**Alignment** - 連想配列表記を揃える。  
[https://github.com/khiltd/Abacus](https://github.com/khiltd/Abacus)

**sublime-phpcs** - PSR準拠のコードに変換する。PHP_CodeSnifferが必要。設定は[こちら](https://github.com/mapserver2007/sublime-settings/blob/master/mac/phpcs.sublime-settings)  
[https://github.com/benmatselby/sublime-phpcs](https://github.com/benmatselby/sublime-phpcs)  

```vim
pear channel-update pear.php.net
pear clear-cache
pear install PHP_CodeSniffer
sudo wget http://cs.sensiolabs.org/get/php-cs-fixer.phar -O /usr/local/bin/php-cs-fixer
```

上記設定で動かない場合、`phpcs_php_path`を空に、`phpcs_executable_path`だけを指定するようにすると動作する。  
[https://github.com/benmatselby/sublime-phpcs/issues/96](https://github.com/benmatselby/sublime-phpcs/issues/96)

**HtmlTidy** - HTMLを整形  tidy単体が必要。ディレクトリ名は「TidyHTML5」にする必要あり。  
[https://github.com/Warin/SublimeTidyHTML](https://github.com/Warin/SublimeTidyHTML)  

**GitGutter** - gitの編集箇所をマーキングする  
[https://github.com/jisaacks/GitGutter](https://github.com/jisaacks/GitGutter)  

**DocBlocker** - PHPのdocコメントを自動挿入する  
[https://github.com/spadgos/sublime-jsdocs](https://github.com/spadgos/sublime-jsdocs)

### 3.2.SublimeLinterの設定
SublimeLinterを使うには[node.js](http://nodejs.org/)が必要。 
`npm install -g jshint`でjshintをインストールする。 
SublimeText上では、Preferenecs->Package Settings->SublimeLinter->ユーザ設定 で以下の記述を行う。 

```json
{
    "sublimelinter_executable_map": {},
        "sublimelinter_syntax_map":
    {
        "Python Django": "python",
        "Ruby on Rails": "ruby",
        "C++": "c",
        "JQueryJavaScript": "javascript"
    },
    "sublimelinter_gutter_marks": true,
    "sublimelinter_wrap_find": true
}
```
※`sublimelinter_executable_map`には何も設定しないこと(Macで設定した場合、Lintされないことを確認)。

### 3.3.Webから拡張を探す
[https://sublime.wbond.net/](https://sublime.wbond.net/)
