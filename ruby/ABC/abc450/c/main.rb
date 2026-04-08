h, w = gets.split.map(&:to_i)
arr = h.times.map { gets.chomp.chars }
visited = Array.new(h) { Array.new(w, false) }
ds = [[-1, 0], [0, -1], [1, 0], [0, 1]]
ans = 0

h.times do |i|
  w.times do |j|
    next if arr[i][j] == '#' || visited[i][j]

    is_enclosed = true
    stack = [[i, j]]
    visited[i][j] = true

    while !stack.empty?
      curr_i, curr_j = stack.pop
      if curr_i == 0 || curr_i == h-1 || curr_j == 0 || curr_j == w-1
        is_enclosed = false
      end

      ds.each do |di, dj|
        ni, nj = curr_i + di, curr_j + dj

        if ni >= 0 && ni < h && nj >= 0 && nj < w && arr[ni][nj] == '.' && !visited[ni][nj]
          visited[ni][nj] = true
          stack.push([ni, nj])
        end
      end
    end
    ans += 1 if is_enclosed
  end
end
puts ans

