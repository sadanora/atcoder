m, d = gets.split.map(&:to_i)
s = gets.chomp.chars
ans = 0
m.times do |i|
  c = s[i]
  l = [i-d, 0].max
  r = [i+d, m-1].min
  ans += 1 unless s[l..r].include?('G')
end
p ans
