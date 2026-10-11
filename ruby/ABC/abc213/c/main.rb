def compress(arr)
  hash = arr.uniq.sort.each.with_index(1).to_h
  arr.map { hash[_1] }
end

h, w, n = gets.split.map(&:to_i)
a, b = n.times.map{ gets.chomp.split.map(&:to_i) }.transpose
puts [compress(a), compress(b)].transpose.map { _1.join(' ') }

__END__
h, w, n = gets.split.map(&:to_i)
arr = n.times.map { gets.split.map(&:to_i) }
rows = arr.map(&:first).uniq.sort
cols = arr.map(&:last).uniq.sort
row_map = rows.each_with_index.to_h { |a,i| [a, i+1] }
col_map = cols.each_with_index.to_h { |b,i| [b, i+1] }
arr.each do |a, b|
  puts [row_map[a], col_map[b]].join(' ')
end
