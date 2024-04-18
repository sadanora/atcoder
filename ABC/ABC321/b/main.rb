n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
ans = -1
(0..100).each do |s|
  res = [*a, s]
  if res.sum - res.minmax.sum >= x
    ans = s
    break
  end
end
puts ans
