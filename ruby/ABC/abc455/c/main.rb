n, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
arr = as.tally.map {_1*_2}.sort
foot = (arr.size)-k
puts foot > 0 ? arr[0...foot].sum : 0
