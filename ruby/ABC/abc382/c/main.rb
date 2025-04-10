n, m = gets.split.map(&:to_i)
a_arr = gets.split.map(&:to_i)
b_arr = gets.split.map(&:to_i)
r = 200010
id = Array.new(r, -1)
a_arr.each_with_index do |a, i|
  while r > a
    r -= 1
    id[r] = i + 1
  end
end
b_arr.map { puts id[_1] }
