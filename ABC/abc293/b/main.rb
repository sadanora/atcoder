require 'set'

n = gets.to_i
a_arr = gets.split.map(&:to_i)
set = Set.new((1..n).to_a)
n.times { |i|
  set.delete(a_arr[i]) if set.include?(i+1)
}
puts set.size
puts set.join(' ')
