N, L, R = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
ans = []
A.each{|a| ans << a.clamp(L, R) }
puts ans.join(' ')
