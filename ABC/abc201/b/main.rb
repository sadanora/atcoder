N = gets.to_i
m = []
N.times {
  s, t = gets.split
  m << [t.to_i, s]
}
puts m.sort[-2][1]
