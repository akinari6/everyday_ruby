def filter_and_sum(array)
  array.select(&:even?).sum
end