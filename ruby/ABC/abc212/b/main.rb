x = gets.chomp.chars.map(&:to_i)
same, step = true, true
3.times do |i|
  same = false if x[i] != x[i+1]
  step = false if ((x[i] + 1 ) % 10) != x[i+1]
end
puts same || step ? 'Weak' : 'Strong'
