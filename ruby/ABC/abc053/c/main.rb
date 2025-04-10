N = gets.to_i
a = N / 11 * 2
b = N % 11
if 1 <= b && b <= 6
  a += 1
elsif 7 <= b
  a += 2
end
puts a
