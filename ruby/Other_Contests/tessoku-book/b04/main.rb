N = gets.chomp
ans = 0
N.size.times do |i|
  next if N[i] == '0'

  ans += 2**(N.size - 1 - i)
end
puts ans
