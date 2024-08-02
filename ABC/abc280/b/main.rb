n = gets.to_i
s_arr = gets.split.map(&:to_i)
ans = [s_arr[0]]
(n-1).times { |i|
  ans << (s_arr[i+1] - s_arr[i])
}
puts ans.join(' ')
