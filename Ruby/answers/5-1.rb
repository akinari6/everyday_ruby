class Book
  def initialize(title, author, price)
    @title = title
    @author = author
    @price = price
  end

  def title
    @title
  end

  def author
    @author
  end

  def price
    @price
  end

  def title=(title)
    @title = title
  end

  def author=(author)
    @author = author
  end

  def price=(price)
    @price = price
  end

  def info
    "『#{@title}』#{@author} - #{@price}円"
  end

  def discounted_price(rate)
    (@price * (1 - rate)).to_i
  end

  def expensive?
    price >= 3000
  end
end

book1 = Book.new("Ruby入門", "山田太郎", 2800)
book2 = Book.new("Rails実践ガイド", "佐藤花子", 3500)

# ゲッターメソッドのテスト
p book1.title
# => "Ruby入門"

p book1.author
# => "山田太郎"

p book1.price
# => 2800

# info メソッドのテスト
p book1.info
# => "『Ruby入門』山田太郎 - 2800円"

p book2.info
# => "『Rails実践ガイド』佐藤花子 - 3500円"

# discounted_price メソッドのテスト
p book1.discounted_price(0.1)
# => 2520  (2800 * 0.9 = 2520)

p book2.discounted_price(0.2)
# => 2800  (3500 * 0.8 = 2800)

# expensive? メソッドのテスト
p book1.expensive?
# => false  (2800 < 3000)

p book2.expensive?
# => true   (3500 >= 3000)