s = gets.chomp.chars
h = Hash.new(nil)
s.each_with_index { h[_1] = _2 }
puts (66..90).map { (h[_1.chr] - h[(_1-1).chr]).abs }.sum
