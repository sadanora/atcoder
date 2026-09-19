s = gets.chomp
if s[-1] == 'e'
  puts [s, 'r'].join('')
else
  puts [s, 'er'].join('')
end
