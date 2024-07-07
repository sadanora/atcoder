n = gets.to_i
h = gets.split.map(&:to_i)
puts h.find_index(h.max) + 1
