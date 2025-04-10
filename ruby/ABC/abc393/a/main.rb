chars = gets.chomp.split
ans = 0
if chars == ["fine", "fine"]
  ans = 4
elsif chars == ["fine", "sick"]
  ans = 3
elsif chars == ["sick", "fine"]
  ans = 2
else
  ans = 1
end
puts ans
