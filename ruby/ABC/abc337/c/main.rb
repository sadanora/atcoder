N = gets.to_i
A = gets.split.map(&:to_i)
a = A.map{|v| v != -1 ? v -1 : v}
d = []
a.each_with_index{|v,i|
  d[a[i]] = i if a[i] != -1
}
ans = []
s = -1
a.each_with_index{|v,i|
  s = i if v == -1
}
ans << s + 1
(N-1).times{
  s = d[s]
  ans << s + 1
}
puts ans.join(' ')
