a, b, c, d = gets.split.map(&:to_i)
if c < a
  puts "Yes"
elsif c == a && d < b
  puts "Yes"
else
  puts "No"
end
