s = gets.chomp.split("")
pair = []
s.each.with_index(1) do |c, i|
  pair << i if c == '#'
  if pair.length >= 2
    puts pair.join(',')
    pair = []
  end
end
