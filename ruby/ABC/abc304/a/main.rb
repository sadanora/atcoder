n = gets.to_i
sarr = []
aarr = []
n.times {
  s, a = gets.split(' ')
  sarr << s
  aarr << a.to_i
}
puts sarr.rotate(aarr.index(aarr.min))
