def total_sales(sales)
  sales.sum { |sale| sale[:amount]}
end

def average_sales(sales)
  return 0.0 if sales.empty?

  (total_sales(sales) / sales.size).to_f
end

def max_sale(sales)
  sales.map { |sale| sale[:amount] }.max
end

def min_sale(sales)
  sales.map { |sale| sale[:amount] }.min
end

sales = [
  { product: "商品A", amount: 15000 },
  { product: "商品B", amount: 8000 },
  { product: "商品C", amount: 25000 },
  { product: "商品D", amount: 12000 },
  { product: "商品E", amount: 20000 }
]

p total_sales(sales)

p average_sales(sales)

p average_sales([])

p max_sale(sales)

p min_sale(sales)
