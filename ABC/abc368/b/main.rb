n = gets.to_i
arr = gets.split.map(&:to_i)
cnt = 0
while arr.count{_1 > 0} > 1
  arr = arr.sort.reverse
  arr[0], arr[1] = arr[0]-1, arr[1]-1
  cnt += 1
end
puts cnt
