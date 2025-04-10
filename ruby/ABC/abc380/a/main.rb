n = gets.to_i
c = n.digits.tally
puts c[1] == 1 && c[2] == 2 && c[3] ==3 ? 'Yes' : 'No'
