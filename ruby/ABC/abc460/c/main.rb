n, m = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort
bs = gets.split.map(&:to_i).sort
ans = 0
as.each do |a|
  break if bs.size < 1

  if bs[0] <= 2*a
    ans += 1
    bs.shift
  end
end
puts ans
