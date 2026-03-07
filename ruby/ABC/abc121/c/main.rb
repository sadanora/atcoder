n, m = gets.split.map(&:to_i)
arr = n.times.map { gets.split.map(&:to_i) }.sort
res = 0
n.times do |i|
  break if i >= n && m <= 0

  res += arr[i][0] * [m, arr[i][1]].min
  m -= [m, arr[i][1]].min
end
puts res
