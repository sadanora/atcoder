H, W = gets.split.map(&:to_i)
A = H.times.map { gets.split.map(&:to_i) }
column = A.map(&:sum)
row = A.transpose.map(&:sum)
ans = []
(0...H).each do |i|
  res = []
  (0...W).each do |j|
    res << column[i] + row[j] - A[i][j]
  end
  ans << res
end
puts ans.map { _1.join(' ') }
