x, y, z = gets.split.map(&:to_i)
if y < 0
  x = -x
  y = -y
  z = -z
end
if x < y
  puts x.abs
else
  if z > y
    puts -1
  else
    puts z.abs + (x-z).abs
  end
end
