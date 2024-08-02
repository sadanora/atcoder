s = gets.chomp.chars
t = s.slice!(0)
if 97 <= t.ord
  puts 'No'
  exit
end
ans = 'Yes'
s.each{|v|
  if 96 >= v.ord
    ans = 'No'
    break
  end
}
puts ans
