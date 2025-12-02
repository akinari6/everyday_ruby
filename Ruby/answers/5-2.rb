class Product
  attr_reader :name, :price
  attr_writer :description
  attr_accessor :stock

  def initialize(name:, price:, stock: 0)
    @name = name
    @price = price
    @stock = stock
  end

  def sell(quantity)
    return false if quantity > @stock

    @stock -= quantity
    true
  end

  def restock(quantity)
    @stock += quantity
  end

  def available?
    @stock >= 1
  end
end

product1 = Product.new(name: "ノートPC", price: 120000, stock: 5)
product2 = Product.new(name: "マウス", price: 2500)  # stock のデフォルトは 0

# attr_reader のテスト（読み取り可能）
p product1.name
# => "ノートPC"

p product1.price
# => 120000

# attr_accessor のテスト（読み書き可能）
p product1.stock
# => 5

product1.stock = 10
p product1.stock
# => 10

# attr_writer のテスト（書き込みのみ）
product1.description = "高性能なノートパソコン"
# OK（エラーにならない）

# p product1.description
# => NoMethodError（読み取りメソッドがないのでエラー）

# sell メソッドのテスト
p product1.sell(3)
# => true

p product1.stock
# => 7  (10 - 3)

p product1.sell(10)
# => false  (在庫不足)

p product1.stock
# => 7  (変わらない)

# restock メソッドのテスト
product1.restock(5)
p product1.stock
# => 12  (7 + 5)

# available? メソッドのテスト
p product1.available?
# => true

p product2.available?
# => false  (stock が 0)
