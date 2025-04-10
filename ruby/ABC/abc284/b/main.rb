t = gets.to_i
t.times {
  gets
  a_arr = gets.split.map(&:to_i)
  puts a_arr.count { _1.odd? }
}
