n = gets.to_i
a = gets.split.map(&:to_i).unshift(0)
pos = [0]
n.times.map { |i| pos[a[i+1]] = i + 1 }
res = []
(1..n).each {|i|
  next if i == pos[i]

  res << [i, pos[i]]
  j = pos[i]
  pos[a[i]], pos[i] = pos[i], pos[a[i]]
  a[j], a[i] = a[i], a[j]
}
puts res.size
res.each{ puts _1.join(' ')}
