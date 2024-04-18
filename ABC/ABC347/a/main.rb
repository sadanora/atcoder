N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
ans = []
A.each do |a|
  q, r = a.divmod(K)
  ans << q if r == 0
end
puts ans.join(' ')
