n, m = gets.split.map(&:to_i)
s = gets.chomp
t = gets.chomp
res = ((s.size)-(t.size)+1).times.map do |i|
        t.chars.map.with_index { |c, j|
          d = (s[i+j].to_i) - (c.to_i)
          d = d < 0 ? d + 10 : d
        }.sum
      end
puts res.min
