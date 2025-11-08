def filter_and_sum(array)
  array.select { |n| n.even? }.sum
end