n = gets.to_i
arr = gets.split.map(&:to_i)
s = arr.sum
c = n-2
res = arr[-2]*arr[-1]
c.times do |i|
  s -= arr[i]
  res += arr[i]*s
end
puts res
