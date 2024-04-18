S = gets.chomp.split('').map(&:to_i)
puts [0, S[0..2]].flatten.join
