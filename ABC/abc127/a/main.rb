a, b = gets.split.map(&:to_i)
if a <= 5
  ans = 0
elsif 6 <= a && a <= 12
  ans = b / 2
else
  ans = b
end
puts ans
