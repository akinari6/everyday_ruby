require 'date'

class Book
  attr_accessor :title, :author, :price, :published_at

  def initialize(title, author, price, published_at = nil)
    @title = title
    @author = author
    @price = price
    @published_at = published_at
  end

  def info
    "「#{@title}」#{@author}(¥#{@price})"
  end
end
