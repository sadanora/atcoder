n = gets.to_i
arr = gets.split.map(&:to_i)
puts arr[(n/2)..].sum
