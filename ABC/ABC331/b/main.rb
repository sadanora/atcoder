N, S, M, L = gets.split.map(&:to_i)
a = []
(0..N).each do |s|
  (0..N).each do |m|
    (0..N).each do |l|
      eggs = s * 6 + m * 8 + l * 12
      next if eggs < N
      amount = s * S + m * M + l * L
      a << amount
    end
  end
end
puts a.sort[0]
