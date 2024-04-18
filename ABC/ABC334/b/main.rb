a, m, l, r = gets.split.map(&:to_i)
l -= a
r -= a
puts (r / m) - ((l - 1) / m)
