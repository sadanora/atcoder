n, q = gets.split.map(&:to_i)
events = q.times.map { gets.split.map(&:to_i) }
penalty = Array.new(n+1, 0)
events.each { |a, b|
  case a
  when 3
    puts penalty[b] >= 2 ? 'Yes' : 'No'
  when 2
    penalty[b] += 2
  when 1
    penalty[b] += 1
  end
}
