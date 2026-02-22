n, q = gets.split.map(&:to_i)
s = gets.chomp
cs = Array.new(n+1, 0)
(1...n).each do |i|
  cs[i+1] = (s[i-1] == 'A' && s[i] == 'C') ? cs[i] + 1 : cs[i]
end
q.times do
  l, r = gets.split.map(&:to_i)
  puts cs[r] - cs[l]
end

