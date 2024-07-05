def misjudged(h, m)
  a, b = h / 10, h % 10
  c, d = m / 10, m % 10
  ac = a * 10 + c
  bd = b * 10 + d
  (0 <= ac && ac <= 23) && (0 <= bd && bd <= 59)
end

h, m = gets.split.map(&:to_i)
while !misjudged(h, m)
  m += 1
  h, m = h + 1, 0 if m == 60
  h = 0 if h == 24
end
puts [h, m].join(' ')
