require 'set'

N = gets.to_i
set = Set.new
(1..N).each do |n|
  puts n if set.add? gets.chomp
end
