n, x = gets.split.map(&:to_i)
puts ('A'..'Z').map { _1 * n }.join[x-1]
