n, l = gets.split.map(&:to_i)
ds = gets.split.map(&:to_i)
if l%3 != 0
  puts 0
  exit
end

x = Array.new(n, 0)
ds.each_with_index do |d,i|
  x[i+1] = (x[i]+d)%l
end

cnt = Array.new(l, 0)
n.times do |i|
  cnt[x[i]] += 1
end

r = l/3
ans = n.times.map do |a|
  x1 = (x[a]+r)%l
  x2 = (x1+r)%l
  cnt[x1]*cnt[x2]
end.sum / 3
puts ans
