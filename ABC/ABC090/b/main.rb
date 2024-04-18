a, b = gets.split.map(&:to_i)
count = 0
(a..b).each{|n|
  d = n.digits
  if d[0] == d[-1] && d[1] == d[-2]
    count += 1
  end
}
puts count
