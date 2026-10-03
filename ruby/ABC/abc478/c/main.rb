n, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
bs = as.sort
l = 0
r = 0
n.times do |i|
	break if as[i] != bs[i]
	l += 1
end
(n-1).downto(0) do |i|
	break if as[i] != bs[i]
	r += 1
end
puts l+r+k >= n ? "Yes" : "No"
