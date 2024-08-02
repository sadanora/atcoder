n = gets.to_i
x_arr = gets.split.map(&:to_i).sort
n.times {
  x_arr.shift
  x_arr.pop
}
puts x_arr.sum.fdiv(x_arr.size)
