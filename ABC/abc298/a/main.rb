n = gets.to_i
s = gets.chomp
ans = 'No'
s.chars.each { |i|
  if i == 'x'
    puts 'No'
    exit
  end
}
s.chars.each { |i|
  if i == 'o'
    puts 'Yes'
    exit
  end
}
puts 'No'
