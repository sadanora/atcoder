h, w = gets.split.map(&:to_i)
puts h.times.map { gets.chomp.chars }.flatten.count('#')
