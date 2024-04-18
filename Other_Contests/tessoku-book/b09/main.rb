N = gets.to_i
t = Array.new(1500) { Array.new(1500) { 0 } }
N.times do
  a, b, c, d = gets.split.map(&:to_i)
  t[a][b] += 1
  t[a][d] -= 1
  t[c][b] -= 1
  t[c][d] += 1
end
t = t.map do |row|
  cs = 0
  row.map do |n|
    cs += n
  end
end
t = t.transpose.map do |col|
  cs = 0
  col.map do |n|
    cs += n
  end
end
puts t.flatten.count { _1 > 0 }
