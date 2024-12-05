n = gets.to_i
arr = n.times.map{ gets.split.map(&:to_i) }
ans = 0
l = [0, 0]
arr.each do |c,d|
  a, b = l
  ans += Math.sqrt((a-c)**2 + (b-d)**2)
  l = [c, d]
end
ans += Math.sqrt((0-l[0])**2 + (0-l[1])**2)
puts ans
