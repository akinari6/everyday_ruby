def repeat(n)
  n.times do |i|
    yield(i + 1)
  end
end

def each_with_index_from_one(array)
  i = 1
  array.each do |elem|
    yield elem, i
    i += 1
  end
end

def measure_time
  start_time = Time.now
  yield
  end_time = Time.now
  p sprintf("完了:%.2f秒", end_time - start_time)
end

repeat(3) do |i|
  puts "#{i}回目の実行"
end

each_with_index_from_one(["りんご", "バナナ", "みかん"]) do |fruit, index|
  puts "#{index}番目: #{fruit}"
end

measure_time do
  sleep(0.5)
  puts "処理中..."
end
