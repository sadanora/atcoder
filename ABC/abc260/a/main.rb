s = gets.chomp
h = s.chars.tally.find { |k,v| v == 1 }
puts h ? h[0] : -1
