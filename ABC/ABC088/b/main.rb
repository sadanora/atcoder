# gets
# input = gets.split.map(&:to_i).sort.reverse
# a = 0
# b = 0
# input.each_with_index {|n, i|
#   i % 2 == 0 ? a += n : b += n
# }
# puts "#{a - b}"
gets
cards = gets.split.map(&:to_i).sort{|a, b| b <=> a }
alice = 0
bob = 0
cards.each_with_index{|n, i|
  i.even? ? alice += n : bob += n
}
puts alice - bob
