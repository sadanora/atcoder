n, t = gets.split.map(&:to_i)
c_arr = gets.split.map(&:to_i)
r_arr = gets.split.map(&:to_i)
cnt = 0
c_arr.each { |c| cnt += 1 if c == t }
color = cnt == 0 ? c_arr[0] : t 
max = -1
ans = -1
n.times { |i|
  next if c_arr[i] != color
  if max < r_arr[i]
    max = r_arr[i]
    ans = i + 1
  end
}
puts ans
