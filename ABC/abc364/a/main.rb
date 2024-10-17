def rec(si, count)
  return true if count < 3

  sj = gets.chomp
  (si + sj).eql?('sweetsweet') ? false : rec(sj, count - 1)
end

n = gets.to_i
puts rec(gets.chomp, n) ? 'Yes' : 'No'

# n = gets.to_i
# si = gets.chomp
# while n > 3
#   sj = gets.chomp
#   if (si + sj).eql?('sweetsweet')
#     puts 'No'
#     exit
#   else
#     si = sj
#     n -= 1
#   end
# end
# puts 'Yes'
