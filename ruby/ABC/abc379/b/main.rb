n, k = gets.split.map(&:to_i)
s = gets.chomp
ans = 0
o, x = ['O', 'X'].map { _1 * k }
(n-k+1).times do |i|
  if s[i...i+k] == o
    ans += 1
    s[i...i+k] = x
  end
end
puts ans
