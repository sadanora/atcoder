h, w = gets.split.map(&:to_i)
si, sj = gets.split.map(&:to_i)
g = h.times.map { [0, *gets.chomp.chars, 0] }.unshift([0]*(w+1)).push([0]*(w+1))
gets.chomp.chars do |x|
  if x == 'U'
    si -= 1 if g[si - 1][sj] == '.'
  elsif x == 'D'
    si += 1 if g[si + 1][sj] == '.'
  elsif x == 'L'
    sj -= 1 if g[si][sj - 1] == '.'
  elsif x == 'R'
    sj += 1 if g[si][sj + 1] == '.'
  end
end
puts [si, sj].join(' ')
