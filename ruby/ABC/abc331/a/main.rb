M, D = gets.split.map(&:to_i)
y, m, d = gets.split.map(&:to_i)

if d === D && m === M
  puts "#{y + 1} 1 1"
elsif d == D
  puts "#{y} #{m + 1} 1"
else
  puts "#{y} #{m} #{d + 1}"
end
