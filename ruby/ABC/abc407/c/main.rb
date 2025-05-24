s = gets.chomp.chars
ans = 0
x = 0
while s.length > 0
  while
    d = s[-1].to_i
    break if (d-x) % 10 == 0
    ans += 1
    x += 1
  end
  s.pop
  ans += 1
end

puts ans
