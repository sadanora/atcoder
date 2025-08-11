s = gets.chomp
n = s.size
if n < 3
  puts 0
  exit
end
ans = 0
n.times do |i|
  next if s[i] != 't'

  ((i+2)...n).each do |j|
    next if s[j] != 't'

    x = 0
    (i..j).each do |k|
      x += 1 if s[k] == 't'
    end

    ans = [ans, (x - 2).to_f / ((j - i + 1) - 2)].max
  end
end
puts ans
