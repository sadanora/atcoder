arr = 8.times.map { gets.chomp.split('') }
8.times { |i|
  8.times { |j|
    puts "#{(j+97).chr}#{8-i}" if arr[i][j] == '*'
  }
}
