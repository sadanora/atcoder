n = gets.to_i
puts (1..n).count { |i| i.digits.size.odd? }
