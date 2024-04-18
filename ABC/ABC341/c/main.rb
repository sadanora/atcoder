H, W, N = gets.split.map(&:to_i)
T = gets.chomp.chars
S = H.times.map { gets.chomp.chars }
ans = 0
(0..H - 1).each do |i|
  (0..W - 1).each do |j|
    next if S[i][j] == '#'

    iy = i
    ix = j
    res = true
    T.each  do |c|
      iy -= 1 if c == 'U'
      iy += 1 if c == 'D'
      ix -= 1 if c == 'L'
      ix += 1 if c == 'R'
      if S[iy][ix] == '#'
        res = false
        break
      end
    end
    ans += 1 if res
  end
end
puts ans
