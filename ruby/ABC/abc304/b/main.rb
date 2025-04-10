n = gets.to_i
ans = case n
      when 0...10**3
        n
      when 10**3...10**4
        (n / 10).to_s.ljust(4, '0')
      when 10**4...10**5
        (n / 100).to_s.ljust(5, '0')
      when 10**5...10**6
        (n / 1000).to_s.ljust(6, '0')
      when 10**6...10**7
        (n / 10000).to_s.ljust(7, '0')
      when 10**7...10**8
        (n / 100000).to_s.ljust(8, '0')
      when 10**8...10**9
        (n / 1000000).to_s.ljust(9, '0')
      end
puts ans
