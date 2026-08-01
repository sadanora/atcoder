n = gets.to_i
s = gets.chomp.chars
x_idx = s.filter_map.with_index { |v,i| i+1 if v == 'x' }
(1..n).each { |i| puts x_idx[i-1] || n }
