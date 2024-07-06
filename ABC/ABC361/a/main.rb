n, k, x = gets.split.map(&:to_i)
a_arr = gets.split.map(&:to_i)
l, r = a_arr[0..k-1], a_arr[k..]
if r.size ==0
  puts [l, x].join(' ')
else
  puts [l, x, r].join(' ')
end
