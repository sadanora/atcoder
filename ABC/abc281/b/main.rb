s = gets.chomp
if s.size == 8 &&
   s[0].match?(/[A-Z]/) &&
   (1..9).include?(s[1].to_i) &&
   s[1..-2].to_i.digits.size == 6 &&
   s[-1].match?(/[A-Z]/)
   puts 'Yes'
else
  puts 'No'
end
