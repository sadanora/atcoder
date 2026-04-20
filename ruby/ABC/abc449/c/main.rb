n, l, r = gets.split.map(&:to_i)
s = gets.chomp
cnt = Hash.new(0)
ans = 0
n.times do |j|
  cnt[s[j-l]] += 1 if (j-l) >= 0
  cnt[s[j-r-1]] -= 1 if (j-r-1) >= 0
  ans += cnt[s[j]]
end
p cnt
puts ans

