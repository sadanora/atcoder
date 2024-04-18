A, B, K = gets.split.map(&:to_i)
ary = (A..B)
puts [ary.first(K), ary.last(K)].flatten.sort.uniq
