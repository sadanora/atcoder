n = gets.to_i
s_arr = n.times.map { gets.chomp }

if s_arr.uniq.size != s_arr.size
  puts 'No'
  exit
end
s_arr.each { |s|
  unless ['H', 'D', 'C', 'S'].include?(s[0]) && ['A', '2', '3', '4', '5', '6', '7', '8', '9', 'T', 'J', 'Q', 'K'].include?(s[1])
    puts 'No'
    exit
  end
}

puts 'Yes'
