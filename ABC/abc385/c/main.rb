n = gets.to_i
h = (n-1).times.map { _1 }
ans = 0
1.upto(n) do |w|
  w.times do |si|
    a = []
    si.step(w, n-1) do |i|
      a << h[i]
    end
    val = -1
    len = 0
    a.each do |x|
      if val == x
        len += 1
      else
        val = x
        len = 1
      end
      p [ans, len]
      ans = [ans, len].max
    end
  end
end

puts ans
