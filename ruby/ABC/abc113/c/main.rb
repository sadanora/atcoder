n, m = gets.split.map(&:to_i)
prefs = Array.new(n+1) { [] }
m.times do |pos|
  pref, year = gets.split.map(&:to_i)
  prefs[pref] << [year, pos]
end
ans = Array.new(m)
(1..n).each do |i|
  prefs[i].sort!.each_with_index do |(_, pos), j|
    ans[pos] = sprintf("%06d%06d", i, j+1)
  end
end
puts ans
