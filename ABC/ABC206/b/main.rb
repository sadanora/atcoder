N = gets.to_i
puts (1..).find{|i| i * (i + 1) / 2 >= N}
