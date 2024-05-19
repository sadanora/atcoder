n = gets.to_i
sc = n.times.map{ gets.split }.sort
sum = sc.inject(0) { |r, i| r + i[1].to_i }
w = sum % n
puts sc[w][0]
