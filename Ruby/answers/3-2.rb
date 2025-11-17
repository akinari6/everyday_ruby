def find_out_of_stock(products)
  products.find { |product| product[:stock].zero? }
end

def has_low_stock?(products, threshold)
  products.any? { |product| product[:stock] <= threshold}
end

def all_in_stock?(products)
  products.all? { |product| product[:stock].positive? }
end

def none_expensive?(products, price_limit)
  products.none? { |product| product[:price] >= price_limit }
end

products = [
  { name: "商品A", price: 1000, stock: 5 },
  { name: "商品B", price: 2000, stock: 0 },
  { name: "商品C", price: 1500, stock: 3 },
  { name: "商品D", price: 3000, stock: 1 }
]

p find_out_of_stock(products)
p has_low_stock?(products, 2)

p all_in_stock?(products)

p none_expensive?(products, 5000)