h,w,x,y = gets.split.map(&:to_i)
x -= 1
y -= 1
grid = h.times.map { gets.chomp.split('') }
ts = gets.chomp.chars
c = 0
ts.each do |t|
  a, b = [x, y]
  case t
  when "U"
    a -= 1
  when "D"
    a += 1
  when "L"
    b -= 1
  when "R"
    b += 1
  end

  case grid[a][b]
  when '.'
    x = a
    y = b
  when '@'
    c += 1
    grid[a][b] = '.'
    x = a
    y = b
  end
end
puts [x+1, y+1, c].join(' ')
