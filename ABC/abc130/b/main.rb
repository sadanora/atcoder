_, X = gets.split.map(&:to_i)
L = gets.split.map(&:to_i)
d = 0
count = 1
L.each{|l|
  d += l
  break if d > X
  count += 1
}
puts count
