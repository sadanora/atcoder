n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = 0
b.each { |i| ans += a[i-1] }
puts ans
