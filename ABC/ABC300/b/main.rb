h, w = gets.split.map(&:to_i)
a = h.times.map { gets.chomp.split('') }
b = h.times.map { gets.chomp.split('') }
(0...h).each { |s|
  (0...w).each { |t|
    res = true
    (0...h).each { |i|
      (0...w).each { |j|
        res = false if a[(i - s + h) % h][(j - t + w) % w] != b[i][j]
      }
    }
    if res
      puts 'Yes'
      exit
    end
  }
}
puts 'No'
