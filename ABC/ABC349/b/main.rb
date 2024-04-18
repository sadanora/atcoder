s = gets.chomp
s_count = s.split('').tally.values
s_count.tally.each_value do |a|
  unless [0, 2].include?(a)
    puts 'No'
    exit
  end
end
puts 'Yes'
