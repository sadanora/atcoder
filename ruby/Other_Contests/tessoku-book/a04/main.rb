N = gets.to_i
ans = (0..9).to_a.reverse.map do |i|
  (N / 2**i) % 2
end
puts ans.join
