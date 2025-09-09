w = gets.chomp.chars
puts w.tally.any? { |v, c| c.odd? } ? "No" : "Yes"
