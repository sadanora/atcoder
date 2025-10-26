v, a, b, c = gets.split.map(&:to_i)
loop do
  [a, b, c].each_with_index do |u, i|
    v -= u
    if v < 0
      puts %w[F M T][i]
      exit
    end
  end
end
