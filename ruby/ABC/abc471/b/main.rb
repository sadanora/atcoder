n = gets.to_i
arr = n.times.map{ gets.chomp.downcase }
p arr.tally.max_by{_1[1]}[1]
