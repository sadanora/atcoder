ab, ac, bc = gets.chomp.split
ans = ''
if ac == '<' && bc == '<'
  ans = ab == '<' ? 'B' : 'A'
elsif ac == '>' && bc == '>'
  ans = ab == '>' ? 'B' : 'A'
else
  ans = 'C'
end
puts ans
