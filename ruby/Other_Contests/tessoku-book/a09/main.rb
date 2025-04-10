H, W, N = gets.split.map(&:to_i)
z = Array.new(H) { Array.new(W) { 0 } }
N.times do
  a, b, c, d = gets.split.map(&:to_i)
  z[a - 1][b - 1] += 1
  z[a - 1][d] -= 1 if d < W
  z[c][b - 1] -= 1 if c < H
  z[c][d] += 1 if c < H && d < W
end
H.times do |i|
  cs = 0
  W.times do |j|
    cs += z[i][j]
    z[i][j] = cs
  end
end
W.times do |i|
  cs = 0
  H.times do |j|
    cs += z[j][i]
    z[j][i] = cs
  end
end
puts z.map { _1.join(' ') }
