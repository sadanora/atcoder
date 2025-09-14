n = gets.to_i
arr = gets.split.map(&:to_i)
res = 2
arr.each do |i|
  break if i == 1
  res += 1
end
arr.reverse.each do |i|
  break if i == 1
  res += 1
end
puts [0, (n + 1 - res)].max
