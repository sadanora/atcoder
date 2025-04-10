s, t = gets.chomp.split
1.upto(s.size-1) { |i|
  chars = s.chars.each_slice(i).to_a
  c = []
  i.times { |j|
    chars.each { |k|
      c << k[j] if k[j]
    }
    if c.join == t
      puts 'Yes'
      exit
    end
    c = []
  }
}
puts 'No'
