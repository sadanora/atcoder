n = gets.to_i
as = gets.split.map(&:to_i)
x = gets.to_i
asum = as.sum
b_size = x / asum * n
tmp = b_size / n * asum
as.each do |a|
  break if x < tmp

  tmp += a
  b_size += 1
end
puts b_size
