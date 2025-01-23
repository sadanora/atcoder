arr = gets.split.map(&:to_i)
c = arr.tally.values
puts [[1,3], [2,2], [3,1]].include?(c) ? 'Yes' : 'No'
