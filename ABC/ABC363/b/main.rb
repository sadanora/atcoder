n, t, p = gets.split.map(&:to_i)
l_arr = gets.split.map(&:to_i)
if l_arr.count{_1 >= t } >= p
  puts 0
  exit
end
d = 0
while l_arr.count{_1 >= t } < p
  l_arr = l_arr.map{_1.succ}
  d += 1
end
puts d
