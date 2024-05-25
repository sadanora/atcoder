n, t = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
res = -1
numarr = Array.new(n){Array.new(n, 0)}

a.each { |i|
  y = (i + 1) / n - 1
  # x = (i % (n * (y+1))) - 1
  x = (i % n) - 1
  p [y, x]
  numarr[y][x] = 1
}
p numarr
