q = gets.to_i
s = gets.chomp
t = gets.chomp
hit = Array.new(s.size, false)
0.upto(s.size - t.size) { |i| hit[i] = (s[i, t.length] == t) }
cs = Array.new(s.size+1, 0)
s.size.times { |i| cs[i+1] = cs[i] + (hit[i] ? 1 : 0) }
q.times do
    l, r = gets.chomp.split.map { _1.to_i - 1 }
    if r - l + 1 < t.size
        puts "No"
        next
    end

    puts cs[r - t.size + 2] - cs[l] > 0 ? "Yes" : "No"
end
