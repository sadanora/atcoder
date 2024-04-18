n, a, b = gets.split.map(&:to_i)
puts (1..n).to_a.select { | i |
  k = 0
  while i > 0
    k += i % 10
    i /= 10
  end
  a <= k && k <= b
}.sum
