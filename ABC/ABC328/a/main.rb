N, X = gets.split.map(&:to_i)
S = gets.split.map(&:to_i)
puts S.filter{|s| s <= X}.sum
