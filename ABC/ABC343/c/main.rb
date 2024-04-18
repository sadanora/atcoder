N = gets.to_i
(10**6).downto(1) do |i|
  j = i**3
  if j <= N && j.to_s == j.to_s.reverse
    puts j
    exit
  end
end
