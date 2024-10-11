a, b, c = gets.split.map(&:to_i)
now = b
while now != c
  if now == a
    puts 'No'
    exit
  end
  now += 1
  now %= 24
end
puts 'Yes'
