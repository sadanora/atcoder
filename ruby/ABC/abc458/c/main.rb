s = gets.chomp.chars
ans = 0
s.each_with_index do |c, i|
  if c == 'C'
    r = [i+i, s.size-1].min
    l = i-(r-i)
    ans += ((r-(l-1)) / 2) + 1
  end
end
puts ans

