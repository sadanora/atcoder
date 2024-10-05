n = gets.to_i
arr = gets.split.map(&:to_i)
sum = arr.sum
ans = 10**10
(1<<n).times do |bits|
  bsum = 0
  n.times do |i|
    bsum += arr[i] if bits[i] == 1
  end
  ans = [ans, [bsum, sum - bsum].max].min
end
puts ans
