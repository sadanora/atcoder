A, B, C, K = gets.split.map(&:to_i)
x = (A - B)
if x.abs > 10 ** 18
  puts 'Unfair'
  exit
end
puts K.even? ? x : -x
