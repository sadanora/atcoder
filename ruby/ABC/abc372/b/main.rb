m = gets.to_i
ans = []
(0..11).each do |i|
  (m % 3).times { ans << i }
  m /= 3
end
puts ans.size
puts ans.join(' ')
