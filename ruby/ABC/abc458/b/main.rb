h, w = gets.split.map(&:to_i)
grid = Array.new(h) { Array.new(w, 0) }
ds = [[-1, 0], [0, -1], [1,0], [0, 1]]
h.times do |x1|
  w.times do |y1|
    ds.each do |di, dj|
      x2, y2 = x1 + di, y1 + dj
      if x2 >= 0 && x2 < h && y2 >= 0 && y2 < w
        grid[x1][y1] += 1
      end
    end
  end
end
puts grid.map { it.join(' ') }

