require 'set'

n, = gets.split.map(&:to_i)
p = []
c = []
f = []
n.times do
  l = gets.split.map(&:to_i)
  p << l[0]
  c << l[1]
  f << Set.new(l[2..])
end
ans = false
n.times do |i|
  n.times do |j|
    ans ||= p[i] >= p[j] && f[j].superset?(f[i]) && ((p[i] > p[j]) || f[j].size > f[i].size)
  end
end
puts ans ? 'Yes' : 'No'
