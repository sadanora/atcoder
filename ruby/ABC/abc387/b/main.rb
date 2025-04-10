arr = 1.upto(9).map { |i| (1..9).map { _1 * i } }
x = gets.to_i
puts arr.flatten.find_all { _1 != x }.sum
