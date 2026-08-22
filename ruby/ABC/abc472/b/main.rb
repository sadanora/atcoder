n = gets.to_i
arr = gets.split.map(&:to_i)
t = arr.sum
ans = t
(n-1).times do |i|
  l = arr[..i].sum
  r = (t-l)
  diff = (l-r).abs
  ans = [ans, diff].min
end
puts ans
