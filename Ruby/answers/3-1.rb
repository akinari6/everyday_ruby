def get_product_names(products)
  products.map { |product| product[:name]}
end

def get_expensive_products(products, threshold)
  products.select { |product| product[:price] >= threshold }
end

def get_discounted_prices(products, discount_rate)
  products.map { |product| product[:price] * (1 - discount_rate) }.map(&:to_i)
end

products = [
  { name: "ノートPC", price: 120000, category: "電化製品" },
  { name: "マウス", price: 2500, category: "電化製品" },
  { name: "キーボード", price: 8000, category: "電化製品" },
  { name: "モニター", price: 35000, category: "電化製品" }
]

p get_product_names(products)

p get_expensive_products(products, 50000)

p get_discounted_prices(products, 0.1)
