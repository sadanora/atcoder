N = gets.to_i
A = N.times.map { gets.split.map(&:to_i) }
M = gets.to_i
B = M.times.map { gets.split.map(&:to_i) }
L = gets.to_i
C = L.times.map { gets.split.map(&:to_i) }
Q = gets.to_i
arr = []
A.each do |a|
  B.each do |b|
    C.each do |c|
      arr << a + b + c
    end
  end
end
p arr
