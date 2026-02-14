n = gets.to_i
arr = n.times.map{ gets.chomp }
m = arr.map { _1.size }.max
arr.each do |s|
  d = m - s.size
  padd = d / 2
  puts "#{'.'*padd}#{s}#{'.'*padd}"
end
