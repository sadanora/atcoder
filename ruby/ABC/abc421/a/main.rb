n = gets.to_i
arr = n.times.map{ gets.chomp }
x, y = gets.chomp.split
puts arr[(x.to_i)-1] == y ? "Yes" : "No"
