n = gets.to_i
arr = n.times.map{ gets.split.map(&:to_i) }
ans = arr[0][1]
1.upto(n-1) do |i|
  t, v = arr[i]
  diff = ans - (t - arr[i-1][0])
  ans = diff > 0 ? diff : 0
  ans += v
end
puts ans
