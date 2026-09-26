c = gets.chomp
i = "BYR".chars.find_index(c)
puts "BYR"[(i+1)%3]