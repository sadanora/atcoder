s = gets.chomp.chars
d = [s.shift]
s.each do |c|
  if c == '0' && d[-1] == '0'
    d[-1] = '00'
  else
    d << c
  end
end
puts d.size
