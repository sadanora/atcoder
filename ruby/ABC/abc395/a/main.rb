n = gets.to_i
arr = gets.split.map(&:to_i)
puts (arr == arr.sort) && (arr.size == arr.uniq.size) ? 'Yes' : 'No'
