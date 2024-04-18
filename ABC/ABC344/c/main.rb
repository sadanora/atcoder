require 'set'
N = gets.to_i
A = gets.split.map(&:to_i)
M = gets.to_i
B = gets.split.map(&:to_i)
L = gets.to_i
C = gets.split.map(&:to_i)
Q = gets.to_i
X = gets.split.map(&:to_i)
P = Set.new(A.product(B).map(&:sum))
X.each do |x|
  ans = 'No'
  C.each do |c|
    ans = 'Yes' if P.include?(x - c)
  end
  puts ans
end
