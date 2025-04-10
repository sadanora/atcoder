n = gets.to_i
s = gets.chomp
(n-1).times { |i|
  if s[i] == s[i+1]
    puts 'No'
    exit
  end
}
puts 'Yes'
