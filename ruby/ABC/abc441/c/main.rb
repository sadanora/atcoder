n, k, x = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i).sort.reverse
sum = 0
((n-k)...n).each do |i|
  sum += arr[i]
  if sum >= x
    puts i+1
    exit
  end
end
puts -1

