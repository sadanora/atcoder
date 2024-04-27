n, q = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)
h = (1..n).to_a.map{[_1, 1]}.to_h
t.each {|i|
  if h[i] == 1
    h[i] = 0
  else
    h[i] = 1
  end
}
puts h.values.sum
