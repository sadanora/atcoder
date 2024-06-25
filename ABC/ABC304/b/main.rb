n = gets.to_i
case n
when 0...10**3
  puts n
when 10**3...10**4
  puts (n / 10).to_s.ljust(4, '0')
when 10**4...10**5
  puts (n / 100).to_s.ljust(5, '0')
when 10**5...10**6
  puts (n / 1000).to_s.ljust(6, '0')
when 10**6...10**7
  puts (n / 10000).to_s.ljust(7, '0')
when 10**7...10**8
  puts (n / 100000).to_s.ljust(8, '0')
when 10**8...10**9
  puts (n / 1000000).to_s.ljust(9, '0')
end
