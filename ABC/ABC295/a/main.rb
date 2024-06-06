n = gets.to_i
w = gets.chomp.split
puts (w & %w(and not that the you)).empty? ? 'No' : 'Yes'
