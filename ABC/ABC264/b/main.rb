r, c = gets.split.map(&:to_i)
puts [(r-8).abs, (c-8).abs].max.odd? ? 'black' : 'white'
