N = gets.to_i
S = N.times.map{gets.split}
ans = S.map.with_index {|s, i|
  [i+1, s[0].count('o')]
}.to_h
puts ans.sort_by{|s, v| [-v, s]}.to_h.keys.join(' ')
