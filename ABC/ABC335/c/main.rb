N, Q = gets.split.map(&:to_i)
pos = (1..N).map{[_1, 0]}.reverse
Q.times do
  a, b = gets.split
  if a == '1'
    x, y = pos[-1]
    x += 1 if b == 'R'
    x -= 1 if b == 'L'
    y += 1 if b == 'U'
    y -= 1 if b == 'D'
    pos << [x, y]
  else
    puts pos[-b.to_i].join(' ')
  end
end
