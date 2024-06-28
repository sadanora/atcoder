h, w = gets.split.map(&:to_i)
arr = h.times.map{ gets.split.map(&:to_i) }
ans = Array.new(h){ Array.new(w){0}}
h.times { |i|
  w.times { |j|
    t = arr[i][j]
    ans[i][j] = t == 0 ? '.' : (t + 64).chr
  }
}
puts ans.map { _1.join }
