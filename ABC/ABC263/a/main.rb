require 'set'

arr = gets.split.map(&:to_i)
h = arr.tally
if h.size == 2 && Set.new(h.values) == Set.new([2,3])
  puts 'Yes'
else
  puts 'No'
end
