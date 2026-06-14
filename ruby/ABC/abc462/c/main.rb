n = gets.to_i
arr = Array.new(n)
n.times do |i|
  x, y = gets.split.map(&:to_i)
  arr[x-1] = y-1
end
ans = 0
y_min = n+1
arr.each do |y|
  ans += 1 if y_min > y
  y_min = [y_min, y].min
end
puts ans

# n = gets.to_i
# arr = n.times.map { gets.split.map(&:to_i) }.sort
# ans = 0
# y_min = n+1
# arr.each do |x, y|
#   y_min = [y_min, y].min
#   ans += 1 if y_min == y
# end
# puts ans
