ai = gets.split.map(&:to_i)
puts ai.tally.sum { _2 / 2}
