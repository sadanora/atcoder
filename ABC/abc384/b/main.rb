n, r = gets.split.map(&:to_i)
n.times do
  d, a = gets.split.map(&:to_i)
  if d == 1
    r += a if 1600 <= r && r <= 2799
  else
    r += a if 1200 <= r && r <= 2399
  end
end
puts r
