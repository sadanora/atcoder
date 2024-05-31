n = gets.to_i
arr = n.times.map{ |i| [i+1, *gets.split.map(&:to_i)] }
arr.sort_by! { | i, a, c | -a }
ans = []
max_c = 10**10
arr.each { | i, a, c|
  if c < max_c
    ans << i
    max_c = c
  end
}
puts ans.size
puts ans.sort.join(' ')
