N = gets.to_i
D = gets.split.map(&:to_i)
count = 0
months = (1..N).to_a
months.each_with_index{|m, i|
  next if m.digits.uniq.length != 1
  (1..D[i]).to_a.each{|d|
    count += 1  if [*m.digits, *d.digits].uniq.length == 1
  }
}
puts count
