def isAC?(s)
  return false unless s[0] == 'A' && s[2..-2].count('C') == 1
  t = s[1..].delete('C')
  t == t.downcase ? true : false
end
s = gets.chomp
puts isAC?(s) ? 'AC' : 'WA'
