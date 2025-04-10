a = gets.to_i
b, c = 400.divmod(a)
puts c == 0 ? b : -1
