n = gets.to_i
arr = gets.split.map(&:to_i)
if arr.include?(0)
  puts 0
  exit
end

ans = 1
arr.each do |a|
  ans *= a
  if ans > 10**18
    puts -1
    exit
  end
end
puts ans
