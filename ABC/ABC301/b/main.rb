n = gets.to_i
a_arr = gets.split.map(&:to_i)

ans = [a_arr[0]]
(n-1).times { |i|
  l, r = a_arr[i], a_arr[i+1]
  diff = (l - r).abs
  if diff == 1
    ans << r
  elsif l < r
    ans << ((l+1..r).to_a)
  elsif l > r
    ans << (r..l-1).to_a.reverse
  end
}
puts ans.join(' ')
