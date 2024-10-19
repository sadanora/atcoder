n, c = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
ans = 1
t = arr[0]
1.upto(n-1) do |i|
  if (arr[i] - t)  >= c
    ans += 1
    t = arr[i]
  end
end
puts ans
