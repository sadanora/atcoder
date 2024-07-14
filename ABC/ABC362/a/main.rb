r, g, b = gets.split.map(&:to_i)
c = gets.chomp
ans = 0
if c == 'Red'
  ans = [g, b].min
elsif c == 'Green'
  ans = [r, b].min
else
  ans = [r, g].min
end
puts ans
