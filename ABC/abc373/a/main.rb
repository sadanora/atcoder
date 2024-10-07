ans = 0
1.upto(12) do |i|
  ans += 1 if gets.chomp.size == i
end
puts ans
