n, m = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
if arr.sum <= m
  puts "Yes"
else
  puts "No"
end
