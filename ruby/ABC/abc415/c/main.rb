t = gets.to_i
t.times do
  n = gets.to_i
  s = [0, *gets.chomp.chars.map(&:to_i)]
  ok = Array.new(1 << n)
  ok[0] = true
  (1<<n).times do |i|
    if ok[i]
      n.times do |j|
        next if i[j] > 0

        nxt = i | (1 << j)
        ok[nxt] = true if s[nxt].zero?
      end
      i += 1
    end
  end
  puts ok.last ? "Yes" : "No"
end
