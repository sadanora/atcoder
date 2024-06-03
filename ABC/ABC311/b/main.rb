n, d = gets.split.map(&:to_i)
s_arr = n.times.map{ gets.chomp.chars }.transpose
ans = 0
tmp = 0
s_arr.each { |s|
  if s.all? { _1 == 'o' }
    tmp += 1
    ans = tmp if tmp > ans
  else
    tmp = 0
  end
}
puts ans
