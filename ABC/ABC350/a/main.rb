s = gets.chomp
i = s[-3..-1].to_i
if (1..315).include?(i)
  puts 'Yes'
elsif (317..349).include?(i)
  puts 'Yes'
else
  puts 'No'
end
