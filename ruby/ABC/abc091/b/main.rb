n = gets.to_i
s_arr = n.times.map { gets.chomp }
m = gets.to_i
t_arr = m.times.map { gets.chomp }
res = [0]
s_arr.tally.each do |k, v|
  res << if t_arr.find(k)
           v - t_arr.count(k)
         else
           v
         end
end
puts res.max
