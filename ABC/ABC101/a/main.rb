input = gets.chomp.split("")
puts "#{input.count('+') - input.count('-')}"
