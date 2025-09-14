x, c = gets.split.map(&:to_i)
ans = 0
(1..x).each do |i|
  a = i * 1000
  t = i * c
  if (a+t) > x
    puts ans
    exit
  end
  ans = a
end
