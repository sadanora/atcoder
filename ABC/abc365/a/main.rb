y = gets.to_i
if (y % 4 != 0) || ((y % 100 == 0) && (y % 400 != 0))
  puts 365
elsif (y % 4 == 0 && y % 100 != 0) || y % 400 == 0
  puts 366
end
