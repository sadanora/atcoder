n = gets.to_i
players = n.times.map{ gets; gets.split.map(&:to_i) }
x = gets.to_i
winners = players.map { |player|
  player.include?(x) ? player : nil
}
if winners.compact.size == 0
  puts 0
  puts ''
  exit
end
min_bets = winners.compact.map { _1.size }.min
puts winners.compact.select { |winner|
  winner.size == min_bets
}.size
b = winners.collect.with_index { |winner, i|
  i+1 if winner && winner.size == min_bets
}
puts b.compact.join(' ')
