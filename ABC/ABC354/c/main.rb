n = gets.to_i
cards = n.times.map { gets.split.map(&:to_i)}
res = cards.map { |card|
  cards.find_index{ card[0] < _1[0] && card[1] > _1[1]}
}
ans = res.map.with_index{ |i, j| j.succ if i.nil? }.compact
puts ans.size
puts ans.join(' ')
