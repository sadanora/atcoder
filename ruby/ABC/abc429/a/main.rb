n,m = gets.split.map(&:to_i)
1.upto(n) do |i|
  puts i <= m ? "OK" : "Too Many Requests"
end
