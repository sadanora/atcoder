n, k = gets.split.map(&:to_i)
a_arr = gets.split.map(&:to_i)
k.times { |i|
  a_arr.shift
  a_arr << 0
}
puts a_arr.join(' ')
