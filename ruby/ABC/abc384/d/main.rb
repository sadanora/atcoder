require 'set'

n, s = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
cs = Array.new((n*2)+1, 0)
(n*2).times { |i| cs[i+1] = cs[i] + arr[i%n] }
m = s % cs[n]
set = Set[*cs]
ans = 'No'
set.size.times do |i|
  if set.include?(cs[i]-m)
    ans = 'Yes'
    break
  end
end
puts ans
