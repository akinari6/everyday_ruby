def each_cons(array, n)
  array.each_with_index do |elem, i|
    next if i + n > array.size

    yield(array[i...i+n])
  end
end

def batch_process(array, batch_size)
  loop = (array.size.to_f / batch_size).ceil

  loop.times do |count|
    from = count * batch_size
    to = from + batch_size > array.size ? array.size : from + batch_size
    yield(array[from...to])
  end
end

def with_progress(array)
  array.each_with_index do |elem, index|
    progress = "[#{index + 1}/#{array.size}]"
    yield(elem, progress)
  end
end

each_cons([1, 2, 3, 4, 5], 3) do |group|
  p group
end

each_cons(["a", "b", "c", "d"], 2) do |group|
  p group
end

batch_process([1, 2, 3, 4, 5, 6, 7], 3) do |batch|
  p batch
end
