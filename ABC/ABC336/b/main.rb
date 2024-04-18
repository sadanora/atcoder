count = 0
gets.to_i.digits(2).each{|n|
  break if n != 0
  count += 1
}
puts count
