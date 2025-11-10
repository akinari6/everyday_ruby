## テストケース

### コンストラクタ
- [x] 必須パラメータで生成できる
    - 入力: title="Ruby入門", author="田中太郎", price=3000
    - 確認: Bookオブジェクトが生成される
    
- [x] 属性を取得できる
    - book.title => "Ruby入門"
    - book.author => "田中太郎"
    - book.price => 3000
    
- [x] published_atを省略できる
    - 入力: published_atなし
    - book.published_at => nil

- [x] published_atを指定できる
    - 入力: published_at=Date.new(2024, 1, 1)
    - book.published_at => Date.new(2024, 1, 1)

### infoメソッド
- [x] 書籍情報を正しいフォーマットで返す
    - 入力: title="リファクタリング", author="Martin Fowler", price=4840
    - 期待値: "「リファクタリング」Martin Fowler (¥4,840)"

### discountメソッド
- [x] 0%割引の場合、元の価格を返す
    - price=1000, percent=0 => 1000
    
- [x] 50%割引の場合、半額を返す
    - price=1000, percent=50 => 500
    
- [x] 100%割引の場合、0を返す
    - price=1000, percent=100 => 0
    
- [x] 小数点以下は切り捨て
    - price=1000, percent=33 => 670 (1000 * 0.67 = 670)
    
- [x] 負の値はエラー
    - percent=-1 => ArgumentError
    
- [x] 100超過はエラー
    - percent=101 => ArgumentError

### published?メソッド
- [x] 出版日が設定されている場合、trueを返す
    - published_at=Date.new(2024, 1, 1) => true
    
- [x] 出版日が設定されていない場合、falseを返す
    - published_at=nil => false