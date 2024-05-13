n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
ans = 1
b = 0
a.each {|i|
  if (b + i) > k
    ans += 1
    b = i
  else
    b += i
  end
}
puts ans
