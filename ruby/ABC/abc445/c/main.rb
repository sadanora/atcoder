n = gets.to_i
arr = gets.split.map(&:to_i)
ans = Array.new(n)
(n-1).downto(0) do |i|
  if arr[i] - 1 == i
    ans[i] = i+1
  else
    ans[i] = ans[arr[i]-1]
  end
end
puts ans.join(" ")
