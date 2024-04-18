N = gets.to_i
t = Array.new(1501) { Array.new(1501) { 0 } }
N.times do
  a, b, c, d = gets.split.map(&:to_i)
  t[a][c] += 1
  t[a][d] -= 1
  t[b][c] -= 1
  t[b][d] += 1
end
(0..1500).each do |i|
  (1..1500).each do |j|
    t[i][j] = t[i][j - 1] + t[i][j]
  end
end
(1..1500).each do |i|
  (0..1500).each do |j|
    t[i][j] = t[i - 1][j] + t[i][j]
  end
end
puts(t.flatten.count { |i| i >= 1 })
