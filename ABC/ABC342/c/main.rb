N = gets.to_i
S = gets.chomp
Q = gets.to_i
from = 'abcdefghijklmnopqrstuvwxyz'
to = 'abcdefghijklmnopqrstuvwxyz'
Q.times  do
  c, d = gets.chomp.split
  to.gsub!(c, d)
end
puts S.chars.map { |c| to[from.index(c)] }.join
