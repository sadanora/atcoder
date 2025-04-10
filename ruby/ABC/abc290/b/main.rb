n, k = gets.split.map(&:to_i)
s_arr = gets.chomp.split('')
res = []
c = 0
s_arr.map { |s|
  c += 1 if s == 'o'
  res << s
  break if c == k
}
puts res.join.ljust(n, 'x')
