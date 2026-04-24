n, m = gets.split.map(&:to_i)
deg = Array.new(n) {0}
m.times { gets.split.each { deg[it.to_i-1] += 1 } }
ans = n.times.map do |i|
        x = n-1-deg[i]
        x*(x-1)*(x-2)/6
      end
puts ans.join(" ")
