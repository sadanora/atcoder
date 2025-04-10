N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
l = 1
r = 10**9
while l < r
  sum = 0
  mid = (l + r) / 2
  A.each { sum += mid / _1 }
  sum >= K ? r = mid : l = mid + 1
end
puts l
