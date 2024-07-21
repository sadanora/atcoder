n, k = gets.split.map(&:to_i)
s = gets.chomp
pt = s.chars.permutation(3).to_a.uniq
p pt
