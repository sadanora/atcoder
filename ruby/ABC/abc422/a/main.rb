i, h, j = gets.chomp.split('')
ans = ''
if j.to_i == 8
  i = (i.to_i + 1).to_s
  j = 1
else
  j = (j.to_i + 1).to_s
end
puts [i, h, j].join('')
