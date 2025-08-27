n = gets.to_i
ts = gets.chomp.chars
res = [0, 0]
f = 0
ts.each do |t|
  if t == 'R'
    f += 1
  else
    case f % 4
    when 0
      res[0] += 1
    when 1
      res[1] -= 1
    when 2
      res[0] -= 1
    when 3
      res[1] += 1
    end
  end
end
puts res.join(' ')
