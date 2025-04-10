gets.to_i
a_arr = gets.split.map(&:to_i)
puts a_arr.index(a_arr.sort[-2]) + 1
