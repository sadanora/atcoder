h, w, x, y = gets.split.map(&:to_i)
arr = h.times.map{ gets.chomp.chars }
x -= 1
y -= 1
ans = 1
(x-1).downto(0) do |i|
  break if arr[i][y] == '#'
  ans += 1
end
(x+1).upto(h-1) do |i|
  break if arr[i][y] == '#'
  ans += 1
end
(y-1).downto(0) do |i|
  break if arr[x][i] == '#'
  ans += 1
end
(y+1).upto(w-1) do |i|
  break if arr[x][i] == '#'
  ans += 1
end
puts ans
