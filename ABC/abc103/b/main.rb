s = gets.chomp
t = gets.chomp
ans = 'No'
(s.size).times do |i|
  s = s[-1] + s[..-2]
  if s == t
    ans = 'Yes'
    break
  end
end
puts ans
