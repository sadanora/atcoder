n, s = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
if arr[0] > s
  puts 'No'
  exit
end

(n-1).times do |i|
  if arr[i+1] - arr[i] <= s
    next
  else
    puts 'No'
    exit
  end
end
puts 'Yes'
