def calculate_total(numbers)
  numbers.reduce(0) do |accumulator, element|
    accumulator += element
  end
end

def calculate_product(numbers)
  numbers.reduce(1) do |accumulator, element|
    accumulator *= element
  end
end

def group_by_length(words)
  words.reduce({}) do |accumulator, element|
    accumulator[element.length] ||= []
    accumulator[element.length] << element
    accumulator
  end
end

# calculate_total のテスト
p calculate_total([1, 2, 3, 4, 5])
# => 15

p calculate_total([10, 20, 30])
# => 60

p calculate_total([])
# => 0

# calculate_product のテスト
p calculate_product([2, 3, 4])
# => 24  (2 * 3 * 4)

p calculate_product([5, 5])
# => 25

p calculate_product([1, 2, 3, 4, 5])
# => 120

# group_by_length のテスト
p group_by_length(["a", "bb", "ccc", "dd"])
# => { 1 => ["a"], 2 => ["bb", "dd"], 3 => ["ccc"] }

p group_by_length(["hello", "hi", "hey", "world"])
# => { 5 => ["hello", "world"], 2 => ["hi"], 3 => ["hey"] }

p group_by_length([])
# => {}
# 