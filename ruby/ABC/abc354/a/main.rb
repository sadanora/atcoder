h = gets.to_i
d = 1
ph = 1
(1..).each {|i|
  break if ph > h
  ph += 2**i
  d += 1
}
puts d
