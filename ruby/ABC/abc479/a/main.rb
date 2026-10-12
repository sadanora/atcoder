n = gets.to_i
arr = gets.split.map(&:to_i)
ans = 0
(1..n).each do |i|
  ans += arr[i-1] if i.odd?
end
puts ans
