k = gets.split.map(&:to_i)[-1]
input = gets.split.map(&:to_i).sort
result = 0
k.times { result += input.pop }
puts result
