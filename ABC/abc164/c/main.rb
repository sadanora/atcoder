N = gets.to_i
h = Hash.new(0)
N.times{h[gets.chomp] += 1}
p h.size
