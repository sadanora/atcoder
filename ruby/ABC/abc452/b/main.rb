h, w = gets.split.map(&:to_i)
res = Array.new(h).map { Array.new(w, '.') }
h.times do |y|
  w.times do |x|
    if y == 0 || y == (h-1) || x == 0 || x == (w-1)
      res[y][x] = '#'
    end
  end
end
res.map { puts it.join('') }

