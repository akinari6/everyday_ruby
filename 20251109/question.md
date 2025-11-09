問題2: Ruby基礎 - ハッシュ操作
以下の要件を満たすメソッド group_by_initial を作成してください:
要件:

文字列の配列を引数として受け取る
各文字列の最初の文字(大文字)をキーとして、その文字で始まる文字列をグループ化したハッシュを返す
空文字列は無視する
キーはアルファベット順にソートされている必要はない

例:
rubygroup_by_initial(["apple", "banana", "avocado", "cherry"])
# => {"A"=>["apple", "avocado"], "B"=>["banana"], "C"=>["cherry"]}

group_by_initial(["Ruby", "rails", "React", "redis"])
# => {"R"=>["Ruby", "rails", "React", "redis"]}

group_by_initial([])
# => {}

group_by_initial(["test", "", "data"])
# => {"T"=>["test"], "D"=>["data"]}
```

---

## ファイル構成
```
.
├── group_by_initial.rb
└── group_by_initial_spec.rb

ヒント

group_by メソッドが便利です
upcase で大文字に変換できます
空文字列のチェックを忘れずに

学習ポイント

Rubyのコレクション操作
メソッドチェーン
エッジケースのハンドリング