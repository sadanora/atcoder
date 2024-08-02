a, b = gets.split.map(&:to_i)
if a == b
  puts -1
  exit
end
puts 6 - (a + b)
