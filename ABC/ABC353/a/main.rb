gets
h = gets.split.map(&:to_i)
m = h.max
puts h[0] == m ? '-1' : h.index { _1 > h[0] } + 1
