n, k = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
puts *[arr[-k..], arr[0...-k]].join(' ')
