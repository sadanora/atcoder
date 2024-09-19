a, b, c = gets.split.map(&:to_i)
# n = b
# while n != c
#   if n == a
#     puts 'No'
#     exit
#   end
#   n += 1
#   n %= 24
# end
# puts 'Yes'

# puts (a-c) % 24 < b && b < (b-c) % 24 ? 'Yes' : 'No'

puts (a-b)*(b-c)*(c-a) > 0 ? 'Yes' : 'No'
