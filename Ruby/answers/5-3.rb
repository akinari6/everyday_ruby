module Discountable
  def apply_discount(rate)
    (@price * (1 - rate)).to_i
  end
end

class Item
  attr_reader :name, :price

  def initialize(name:, price:)
    @name = name
    @price = price
  end

  def info
    "#{@name}: #{@price}円"
  end
end

class Book < Item
  include Discountable

  attr_reader :author

  def initialize(name:, price:, author:)
    super(name: name, price: price)
    @author = author
  end

  def info
    "書籍: #{@name} by #{@author} - #{@price}円"
  end
end

class Electronics < Item
  include Discountable

  attr_reader :warranty_years

  def initialize(name:, price:, warranty_years:)
    super(name: name, price: price)
    @warranty_years = warranty_years
  end

  def info
    "電化製品: #{@name} - #{@price}円（保証: #{@warranty_years}年）"
  end
end

# Book クラスのテスト
book = Book.new(name: "Ruby入門", price: 2800, author: "山田太郎")

p book.name
# => "Ruby入門"

p book.price
# => 2800

p book.author
# => "山田太郎"

p book.info
# => "書籍: Ruby入門 by 山田太郎 - 2800円"

p book.apply_discount(0.1)
# => 2520  (2800 * 0.9)

# Electronics クラスのテスト
laptop = Electronics.new(name: "ノートPC", price: 120000, warranty_years: 3)

p laptop.name
# => "ノートPC"

p laptop.price
# => 120000

p laptop.warranty_years
# => 3

p laptop.info
# => "電化製品: ノートPC - 120000円（保証: 3年）"

p laptop.apply_discount(0.15)
# => 102000  (120000 * 0.85)

# 継承の確認
p book.is_a?(Item)
# => true

p laptop.is_a?(Item)
# => true

p book.is_a?(Book)
# => true
