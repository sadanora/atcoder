s = gets.chomp
t = gets.chomp
res = "Yes"
(1...(s.size)).each  do |i|
  if s[i].ord < 97
    res = "No" unless t.include?(s[i-1])
  end
end
puts res
