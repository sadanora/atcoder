n, m = gets.split.map(&:to_i)
c_arr = gets.split
d_arr = gets.split
p_arr = gets.split.map(&:to_i)

h = {}
d_arr.each.with_index(1) { |d,i|
  h[d] = p_arr[i]  
}
puts c_arr.inject(0) { |x,y| x += h[y] || p_arr[0] }
