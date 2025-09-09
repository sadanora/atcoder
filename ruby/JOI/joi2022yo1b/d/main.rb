n = gets.to_i
as = gets.split.map(&:to_i)
p as.tally.min_by { |v, c| [c, v] }[0]
