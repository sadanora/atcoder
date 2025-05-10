r, x = gets.split.map(&:to_i)
res = 'No'
case x
when 1
  res = 'Yes' if r >= 1600 && r <= 2999
when 2
  res = 'Yes' if r >= 1200 && r <= 2399
end
puts res
