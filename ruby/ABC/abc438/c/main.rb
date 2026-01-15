n = gets.to_i
as = gets.split.map(&:to_i)
stack = []
as.each do |a|
  stack << a
  next if stack.size < 4
  if (stack[-4] == stack[-3]) && (stack[-3] == stack[-2]) && (stack[-2] == stack[-1])
    stack.pop(4)
  end
end
p stack.size
