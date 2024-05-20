n = gets.to_i
a = gets.split.map(&:to_i)
ans = []
a.each_slice(7) { |i|
  ans << i.sum
}
puts ans.join(' ')
