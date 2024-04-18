s = gets.chomp
t = gets.chomp.downcase.chars
# a = s.index(t[0])
# if a
#   b = s[(a+1)..].index(t[1])
# else
#   puts 'No'
#   exit
# end
# puts b && t[2] == 'x' || s[(b+1)..].include?(t[2]) ? 'Yes' : 'No'

a = s.index(t[0])
if a
  b = s[(a+1)..].index(t[1])
else
  puts 'No'
  exit
end
if b && t[2] == 'x' || s[(b+1)..].include?(t[2])
  puts 'Yes'
else
  puts 'No'
  exit
end
