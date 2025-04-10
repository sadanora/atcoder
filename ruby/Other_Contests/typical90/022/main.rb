n = gets.split.map(&:to_i)
r = n.inject(:gcd)
puts n.map { _1 / r - 1 }.sum
