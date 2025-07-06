n = gets.to_i
arr = n.times.map{ gets.chomp }
p arr.permutation(2).to_a.map{ _1.join('') }.uniq.length
