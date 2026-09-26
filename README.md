個人用の問題・解答管理リポジトリ。`acc` は独自実装、サンプル取得とテストには `oj` を使用。

## セットアップ

以下をリポジトリのルートで実行。シェルは `mise activate` 設定済みを前提とする。
```bash
mise trust
mise install
mise run setup
```

Ruby、Haskell などのランタイムは別途インストールが必要。

## 問題取得

```bash
cd ruby/ABC
acc new abc100               # 問題を対話選択
# 選択を省略する場合: acc new abc100 --tasks a b / acc new abc100 --all

cd abc100/a
acc add                     # 未取得の問題を対話選択
# 選択を省略する場合: acc add --tasks c d / acc add --all
```

実行位置に `abc100/a/main.rb`・`abc100/a/test/` などを作成する。
`ruby/`・`haskell/` 配下では言語を自動判定。

## テスト

問題ディレクトリで実行。

```bash
ojt                         # main.rb / main.hs をテスト
ojt --file main2.rb          # ファイル指定
ojt -- -t 5                 # 制限時間5秒
ojt -- -e 1e-6              # 誤差許容値
```

`--` 以降は `oj test` のオプション。ケースごとの出力も `oj` に任せる。

## 認証

```bash
acc login                   # Cookie を取り込む
acc session                 # ログイン状態を確認
```

- 公開済みの過去問取得では通常ログイン操作は不要のはず。
- コンテスト中などログインセッションが必要な場合は`acc login` でブラウザを開き、ログイン後に開発者ツールのCookiesから `REVEL_SESSION` の値をコピーしてターミナルで貼り付ける。

## 設定・動作確認

- 言語ごとの実行方法: `atcoder.toml`
- 言語ごとのテンプレート: `templates/`
- CLI のテスト: `mise run check`
