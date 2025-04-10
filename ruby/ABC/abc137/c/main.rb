N = gets.to_i
h = Hash.new(0)
N.times{h[gets.chomp.chars.sort.join] += 1; p h}
puts h.values.map{_1 * (_1-1) / 2}.sum
