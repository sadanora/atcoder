arr = gets.split.map(&:to_i)
puts arr[1] == arr.sort[1] ? 'Yes' : 'No'
