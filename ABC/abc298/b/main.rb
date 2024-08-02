n = gets.to_i
a = n.times.map{ gets.split.map(&:to_i) }
b = n.times.map{ gets.split.map(&:to_i) }
4.times {
  res = true
  n.times { |i|
    n.times { |j|
      if a[i][j] == 1 && b[i][j] != 1
        res = false
      end
    }
  }
  if res
    puts 'Yes'
    exit
  end
  a = a.reverse.transpose
}
puts 'No'
