def transform_array(array)
  result = []
  array.each_with_index do |elem, idx|
    result << yield(elem, idx)
  end
  result
end

def select_with_index(array)
  result = []
  array.each_with_index do |elem, idx|
    result << elem if yield(elem, idx)
  end
  result
end

def build_hash(keys)
  hash = {}
  keys.each do |key|
    hash[key] = yield(key)
  end
  hash
end

result = transform_array([10, 20, 30]) do |value, index|
  "#{index}: #{value}"
end
p result

result = transform_array([1, 2, 3]) do |value, index|
  value * index
end
p result


result = select_with_index([10, 20, 30, 40, 50]) do |value, index|
  index.even?
end
p result

result = select_with_index([10, 20, 30, 40]) do |value, index|
  value > 20 && index > 1
end
p result


result = build_hash([:name, :age, :city]) do |key|
  case key
  when :name then "太郎"
  when :age then 25
  when :city then "東京"
  end
end
p result