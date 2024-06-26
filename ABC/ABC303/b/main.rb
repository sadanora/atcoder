n, m = gets.split.map(&:to_i)
orders = m.times.map{ gets.split.map(&:to_i) }
s = (1..n).to_a.combination(2).to_a
orders.each { |arr| 
  arr.each_cons(2).each { |a|
    s.delete(a.sort)
  }
}
puts s.size
