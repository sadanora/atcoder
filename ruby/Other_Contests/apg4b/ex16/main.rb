arr = gets.split.map(&:to_i)
ans = 'NO'
(arr.length - 1).times do |i|
  ans = 'YES' if arr[i] == arr[i + 1]
end
puts ans
