K = gets.to_i
A, B = gets.split
def to_decimal(str, base)
  result = 0
  str.each_char{|c|
    result *= K
    result += c.to_i
  }
  result
end
a = to_decimal(A, K)
b = to_decimal(B, K)
puts a * b
