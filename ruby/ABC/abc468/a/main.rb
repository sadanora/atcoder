n = gets.to_i
arr = gets.split.map(&:to_i)
ans = 0
1.upto(n-2) do |i|
  if arr[i-1] < arr[i] && arr[i] > arr[i+1]
    ans += 1
  end
end
puts ans
