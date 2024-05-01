n = gets.to_i
A = n.times.map { gets.chomp.split('') }
B = n.times.map { gets.chomp.split('') }
A.each_with_index { |i,j|
  next if i == B[j]
  i.each_with_index { |k,l|
    if k != B[j][l]
      puts "#{j+1} #{l+1}"
      exit
    end
  }
}
