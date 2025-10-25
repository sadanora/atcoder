n, m = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
arr.size.times do |i|
  as = arr.dup
  as.delete_at(i)
  if as.sum == m
    puts "Yes"
    exit
  end
end
puts "No"
