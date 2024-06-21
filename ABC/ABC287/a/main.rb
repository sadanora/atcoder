n = gets.to_i
s = n.times.map { gets.chomp }
puts s.count('For') > s.count('Against') ? 'Yes' : 'No'
