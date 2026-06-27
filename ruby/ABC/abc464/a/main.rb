s = gets.chomp
e = s.count("E")
w = s.count("W")
puts e > w ? "East" : "West"
