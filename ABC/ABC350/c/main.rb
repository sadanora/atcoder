n = gets.to_i
a = gets.split.map(&:to_i).unshift(0)
pos = [0]
(1..n).each { |i| pos << a.index(i)}
res = []
(1..n).each {|i|
  p a
  p pos

  if i == pos[i]
    next
  end
  # [0,_3,_4,_1,_2,_5]
  res << [i, pos[i]]

  a_l = a[i] # 3
  a_r = a[pos[i]] # A[3] -> 1
  a[pos[i]] = a_l
  a[i] = a_r

  pos_l = pos[i]
  pos_r = pos[pos[i]]
  pos[pos[i]] = pos_l
  pos[i] = pos_r
}
puts res.size
res.each{ puts _1.join(' ')}
