require 'set'

s, k = gets.chomp.split
k = k.to_i
set = Set.new(s.chars.permutation)
puts set.to_a.sort[k-1].join('')
