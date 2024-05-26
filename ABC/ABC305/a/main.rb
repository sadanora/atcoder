n = gets.to_i
q, r = n.divmod(5)
puts (0..2).cover?(r) ? 5 * q : 5 * (q + 1)
