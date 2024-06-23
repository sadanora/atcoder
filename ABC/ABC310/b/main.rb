# n, m = gets.split.map(&:to_i)
# pcf = n.times.map { gets.split.map(&:to_i) }.sort

# (n-1).times {
#   pi, _, *fi = pcf.shift
#   pcf.each { |arr|
#     pj, _, *fj = arr
#     # next if fi.size <= fj.size

#     if (fi & fj).size >= fi.size && (fi | fj).size > fj.size || pi < pj
#       puts 'Yes'
#       exit
#     end
#   }
# }
# puts 'No'
require 'set'

n, m = gets.split.map(&:to_i)
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
    ans |= p[i] >= p[j] && f[j].superset?(f[i]) && ([p[i], p[j], f[j].size].max > f[i].size)
  end
end
puts ans ? 'Yes' : 'No'
# n.times.map { gets.split.map(&:to_i) }.sort
