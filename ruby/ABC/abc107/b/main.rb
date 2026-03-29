def func(arr)
  arr.uniq.size == 1
end

h, w = gets.split.map(&:to_i)
arr = h.times.map { gets.chomp.chars }
wi = arr.each_with_index.filter_map { |w, i| i if func(w) }.to_set
hi = arr.transpose.each_with_index.filter_map { |h, i| i if func(h) }.to_set
a = arr.delete_if.with_index { |w, i| wi.include?(i) }
b = a.transpose.delete_if.with_index { |h,i| hi.include?(i) }.transpose
puts b.map { it.join('') }
