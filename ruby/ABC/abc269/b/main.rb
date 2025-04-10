arr = 10.times.map{ gets.chomp.split('') }
a, c = 11, 11
b, d = 0, 0
(0..9).each { |i|
  (0..9).each { |j|
    if arr[i][j] == '#'
      a = [a, i+1].min
      b = [b, i+1].max
      c = [c, j+1].min
      d = [d, j+1].max
    end
  }
}
[a, b, c, d].each_slice(2) { puts _1.join(' ')}
