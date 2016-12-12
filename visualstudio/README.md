# Visual Studio設定
VisualStudio設定

## 1.全般
* ソリューションエクスプローラーを左側に移動
    * EclipseやSubLimeTextと同じ
* 配色を「濃色」にする
    * [ツール]→[オプション]→[環境]→[全般]の配色テーマを「濃色」
* フォント
    * [ツール]→[オプション]→[環境]→[フォントおよび色]
    * フォント：Courier New、サイズ：10
* スペース表示
    * [編集]→[詳細]→[スペースの表示]
* CodeLens
    *  [ツール]→[オプション]→[テキストエディター]→[すべての言語]→[CodeLens]
    * 「テストの状態を表示」「例外(Application Insights)の表示」にチェックを入れる
* End of the Line
    * [ツール]→[オプション]→[End of the Line]
    * When line ending is：CR LFにチェック
    * TortoiseGit Merge styleにチェック

## 2.キーバインド
Eclipse大好き人間向け。

| VS2013                                                                         | VS2015                                                                         | キーバインド  |
|--------------------------------------------------------------------------------|--------------------------------------------------------------------------------|---------------|
| 編集.選択範囲のコメント                                                        | 編集.選択範囲のコメント                                                        | Ctrl+/        |
| 編集.選択範囲のコメントを解除                                                  | 編集.選択範囲のコメントを解除                                                  | Ctrl+Shift+/  |
| 表示.前に戻る                                                                  | 表示.戻る                                                                      | Alt+←         |
| 表示.次に進む                                                                  | 表示.次に進む 表示.次に                                                        | Alt+→         |
| 編集.フォルダーを指定して検索                                                  | 編集.フォルダーを指定して検索 (デフォルト設定済み)                             | Ctrl+Shift+f  |
| 編集.すべての参照の検索                                                        | 編集.すべての参照を検索                                                        | Ctrl+Shift+g  |
| エディターコンテキストメニュー.コードウィンドウ.usingの整理.削除および並び替え | エディターコンテキストメニュー.コードウィンドウ.usingの整理.削除および並び替え | Ctrl+Shift+o  |
| 編集.次を検索選択範囲 (デフォルト設定済み)                                     | 編集.次を検索選択範囲 (デフォルト設定済み)                                     | Ctrl+F3       |
| (なし)                                                                         | 編集.実装に移動                                                                | F12           |
| 編集.前を検索選択範囲 (デフォルト設定済み)                                     | 編集.前を検索選択範囲 (デフォルト設定済み)                                     | Ctrl+Shift+F3 |
| 編集.ジャンプ                                                                  | 編集.ジャンプ                                                                  | Ctrl+l        |
| 編集.行の削除                                                                  | 編集.行の削除                                                                  | Ctrl+d        |

## 3.拡張
* [VSCommands for Visual Studio 2013](https://visualstudiogallery.msdn.microsoft.com/c6d1c265-7007-405c-a68b-5606af238ece)
    * VS2010まではこれだけでも良かったが、2013から設定項目が減った
    * VS2015からは使用不可
* [Productivity Power Tools 2013](https://visualstudiogallery.msdn.microsoft.com/dbcb8670-889e-4a54-a226-a48a15e4cace)
* [Productivity Power Tools 2015](https://marketplace.visualstudio.com/items?itemName=VisualStudioProductTeam.ProductivityPowerTools2015)
    * VSCommandsで使えなくなった機能を使える
* [Local History for Visual Studio](https://localhistory.codeplex.com/)
    * SublimeTextではおなじみのLocalHistoryが使える
* [C# outline 2015](https://visualstudiogallery.msdn.microsoft.com/9390e08c-d0aa-42f1-b3d2-5134aabf3b9a)
    * ifやforといった構文で開閉可能
* [Configuration Transform](https://visualstudiogallery.msdn.microsoft.com/579d3a78-3bdd-497c-bc21-aa6e6abbc859)
    * App.configのDebub/Release切り替えが楽にできる。
* [End of the Line](https://marketplace.visualstudio.com/items?itemName=rolfwr.EndoftheLine)
    * 改行文字を表示する
* [Code alignment](https://marketplace.visualstudio.com/items?itemName=cpmcgrath.Codealignment)
    * イコール位置を簡単に揃える
* [Go To Definition](https://marketplace.visualstudio.com/items?itemName=NoahRichards.GoToDefinition)
    * Ctrl＋クリックで定義元へジャンプ
* [Trailling Whitespace Visualizer](https://marketplace.visualstudio.com/items?itemName=MadsKristensen.TrailingWhitespaceVisualizer)
    * 不要なホワイトスペースをハイライトしてくれる
* [.NET Reflector Visual Studio Extension](https://marketplace.visualstudio.com/items?itemName=vs-publisher-306627.NETReflectorVisualStudioExtension)
    * DLLのソースコードが読める。有料。
