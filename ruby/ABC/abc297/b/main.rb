s = gets.chomp.split('')
ans = 'No'
if s.map.with_index { |v, i| i if v == 'B' }.compact.sum.odd?
  ans = 'Yes' if s.filter { _1 == 'K' || _1 == 'R' }.join == 'RKR'
end
puts ans
