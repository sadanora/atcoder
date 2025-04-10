n, m = gets.split.map(&:to_i)
s_arr = n.times.map{ gets.chomp }
t_arr = m.times.map{ gets.chomp }
cnt = 0
s_arr.each { |s|
  t_arr.each { |t|
    if s[-3..] == t
      cnt += 1
      break
    end
  }
}
puts cnt
