n = gets.to_i
arr = n.times.map { gets.split.map(&:to_i) }

arr.each {|x1, y1|
  dmax = -1
  ans = -1
  arr.each.with_index(1) {|(x2,y2), k|
    d = (x1-x2)**2 + (y1-y2)**2
    if (dmax < d)
      dmax = d
      ans = k
    end
  }
  puts ans
}
