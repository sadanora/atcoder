H, W = gets.split.map(&:to_i)
X = H.times.map { gets.split.map(&:to_i) }
Q = gets.to_i
z = Array.new(H + 1) { Array.new(W + 1, 0) }
H.times do |i|
  W.times do |j|
    z[i + 1][j + 1] = X[i][j] + z[i + 1][j]
  end
end
H.times do |i|
  W.times do |j|
    z[i + 1][j + 1] += z[i][j + 1]
  end
end
Q.times do
  a, b, c, d = gets.split.map(&:to_i)
  puts z[c][d] + z[a - 1][b - 1] - z[a - 1][d] - z[c][b - 1]
end
