s = gets.chomp
t = gets.chomp
x = []
n = s.size
while s != t
  nxt = 'z' * n
  n.times do |i|
    if s[i] != t[i]
      tmp = s.dup
      tmp[i] = t[i]
      nxt = [nxt, tmp].min
    end
  end
  x << nxt
  s = nxt
end
puts x.size
puts x
