N = gets.to_i
H = gets.split.map(&:to_i)
count = 0
H.each_with_index{|h, i|
  next if H[0..i].max > h
  count += 1
}
puts count
