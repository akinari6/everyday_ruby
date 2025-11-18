def total_completed_amount(orders)
  orders.select { |order| order[:status] == :completed }
        .sum { |order| order[:amount] }
end

def high_value_customer_names(orders, threshold)
  orders.select { |order| order[:amount] >= threshold }
    .map { |order| order[:customer] }
    .uniq
end

def average_completed_order_amount(orders)
  return 0.0 if orders.empty?
  
  completed_orders = orders.select { |order| order[:status] == :completed }
  completed_orders.map { |order| order[:amount] }.sum.to_f / completed_orders.size
end

orders = [
  { customer: "田中", amount: 15000, status: :completed },
  { customer: "佐藤", amount: 8000, status: :pending },
  { customer: "鈴木", amount: 25000, status: :completed },
  { customer: "田中", amount: 12000, status: :completed },
  { customer: "高橋", amount: 30000, status: :completed },
  { customer: "佐藤", amount: 5000, status: :cancelled },
  { customer: "鈴木", amount: 18000, status: :pending }
]

p total_completed_amount(orders)

p high_value_customer_names(orders, 20000)

p average_completed_order_amount(orders)