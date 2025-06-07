n = gets.to_i
t = gets.chomp
a = gets.chomp
res = "No"
n.times do |i|
  if t[i] == 'o' && a[i] == 'o'
    res = "Yes"
    break
  end
end
puts res
