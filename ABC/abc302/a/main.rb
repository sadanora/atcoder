a, b = gets.split.map(&:to_i)
c, d = a.divmod(b)
puts d == 0 ? c : c + 1
