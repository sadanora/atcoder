n = gets.to_i
s = gets.chomp.chars
ans = 0
tmp = 0
s.each do |c|
  if c == 'R'
    tmp += 1
  else
    tmp = 0
  end
  ans = [ans, tmp].max
end
puts ans
