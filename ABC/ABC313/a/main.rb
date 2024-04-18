N = gets.to_i
P = gets.split.map(&:to_i)
m = 0
P[1...N].each { |p| m = [m, p].max }
puts [0, m + 1 - P[0]].max
