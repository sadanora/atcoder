n, m = gets.split.map(&:to_i)
ans = Array.new(n, 0)
m.times do |i|
    t = i % n
    ans[t] += 1
end
ans.each { puts _1 }
