a, b = gets.split.map(&:to_i)
puts ((b.to_f / a).round(3) / 1.000).to_s.ljust(5, '0')
