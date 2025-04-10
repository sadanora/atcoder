def compress(arr)
  hash = arr.uniq.sort.each.with_index(1).to_h
  arr.map { hash[_1] }
end

h, w, n = gets.split.map(&:to_i)
a, b = n.times.map{ gets.chomp.split.map(&:to_i) }.transpose
puts [compress(a), compress(b)].transpose.map { [_1[0], _1[1]].join(' ') }
