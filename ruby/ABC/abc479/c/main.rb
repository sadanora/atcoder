n, w = gets.split.map(&:to_i)
arr = n.times.map { gets.split.map(&:to_i) }
ans = 0
(1 << n).times do |mask|
  asum = bsum = 0
  arr.each_with_index do |(a, b), i|
    next if (mask >> i) & 1 == 0

    asum += a
    bsum += b
  end

  next if bsum > w
  ans = [ans, asum].max
end
puts ans
