def square_evens(array)
  array.select { |n| n.even? }.map { |n| n * n}
end

pp square_evens([1, 2, 3, 4, 5, 6])
pp square_evens([1, 3, 5, 7])
pp square_evens([])
pp square_evens([2, 4, 6, 8])
