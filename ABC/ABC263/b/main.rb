n = gets.to_i
p_arr = [*[0]*2, *gets.split.map(&:to_i)]
ans = 1
pre = p_arr[n]
while pre != 1
  pre = p_arr[pre]
  ans += 1
end
puts ans
