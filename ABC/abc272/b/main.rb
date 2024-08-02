require 'set'
n, m = gets.split.map(&:to_i)
c = Array.new(n){ (1..n).to_a }.map.with_index{ |d, i| d - [i+1] }
m.times do
  k, *x = gets.split.map(&:to_i)
  x.each do |i|
    t = x - [i]
    c[i-1] -= t
  end
end
puts c.flatten.size > 0 ? 'No' : 'Yes'
