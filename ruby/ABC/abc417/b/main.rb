n, m = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
bs.each do |b|
  t = as.index(b)
  if t
    as.delete_at(t)
  end
end
puts as.join(" ")
