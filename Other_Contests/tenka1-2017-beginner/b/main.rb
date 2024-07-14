n = gets.to_i
arr = n.times.map { gets.split.map(&:to_i) }.sort
puts arr[-1][0] + arr[-1][-1]
