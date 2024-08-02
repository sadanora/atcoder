N = gets.to_i
S = gets.chomp
A = 'A'.ord
puts S.chars.map{((_1.ord - A + N) % 26 + A).chr}.join
